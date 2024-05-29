package com.game.treasureHunt.controller;

import com.game.treasureHunt.config.constants.THDRatings;
import com.game.treasureHunt.config.constants.THJspConstants;
import com.game.treasureHunt.service.gaming.GamingService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
public class THGameController {
    @Autowired
    private GamingService gamingService;

    @RequestMapping(value = "/game", method = RequestMethod.GET)
    public String gamingWelcome(ModelMap modelMap) {
        modelMap.addAttribute("ratings", THDRatings.values());
        return THJspConstants.Game.GAME;
    }

    @RequestMapping(value = "/game", method = RequestMethod.POST)
    public String gamingQuestions(@RequestParam String rating, ModelMap modelMap, HttpSession session) {
        if (rating == null || rating.isEmpty()) {
            modelMap.addAttribute("error", "Please select a rating before starting the game.");
            modelMap.addAttribute("ratings", THDRatings.values());
            return THJspConstants.Game.GAME;
        }

        List<String> questions = gamingService.sendQuestions(rating);
        session.setAttribute("questions", questions);
        session.setAttribute("currentQuestion", 0);
        session.setAttribute("rating", rating);

        return "redirect:/question";
    }

    @RequestMapping(value = "/question", method = RequestMethod.GET)
    public String displayQuestion(HttpSession session, ModelMap modelMap) {
        List<String> questions = (List<String>) session.getAttribute("questions");
        Integer currentQuestion = (Integer) session.getAttribute("currentQuestion");

        if (questions == null || currentQuestion == null || currentQuestion >= questions.size()) {
            return "redirect:/game";
        }

        modelMap.addAttribute("questionNumber", currentQuestion + 1);
        modelMap.addAttribute("question", questions.get(currentQuestion));
        return THJspConstants.Game.QUESTION;
    }

    @RequestMapping(value = "/checkAnswer", method = RequestMethod.POST)
    public String checkAnswer(HttpSession session, @RequestParam String inputAnswer, ModelMap modelMap) {
        String viewPage =THJspConstants.Game.ANSWER;
        Integer currentQuestion = (Integer) session.getAttribute("currentQuestion");
        List<String> questionsList = (List<String>) session.getAttribute(
                "questions");
        List<Map<String, String>> qaList = getGamingService().setQuestionAnswer(questionsList);
        for (Map<String, String> qa : qaList) {
            if (inputAnswer.equalsIgnoreCase(qa.get(questionsList.get(currentQuestion)))) {
                viewPage = checkGiftAvailable(modelMap, currentQuestion);
            }
            else
                modelMap.addAttribute("error", "Answer is incorrect");
        }
        return viewPage;
    }

    @RequestMapping(value = "/nextQuestion", method = RequestMethod.POST)
    public String nextQuestion(HttpSession session) {
        String viewPage = "redirect:/question";
        Integer currentQuestion = (Integer) session.getAttribute("currentQuestion");
        List<String> questions = (List<String>) session.getAttribute("questions");
        if (currentQuestion != null && currentQuestion<(questions.size()-1)) {
            session.setAttribute("currentQuestion", currentQuestion + 1);
            return viewPage;
        }
        viewPage = THJspConstants.UserFlow.END;
        return viewPage;
    }

    private String checkGiftAvailable(ModelMap modelMap, Integer currentQuestion) {
        if (currentQuestion != 0 && (currentQuestion + 1) % 2 == 0) {
            List<String> giftsList = getGamingService().sendGifts();
            modelMap.addAttribute("gift", giftsList.get(currentQuestion / 2));
            return THJspConstants.Game.GIFT;
        }
        return THJspConstants.Game.ANSWER;
    }

    public GamingService getGamingService() {
        return gamingService;
    }
}
