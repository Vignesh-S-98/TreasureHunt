package com.game.treasureHunt.controller;

import com.game.treasureHunt.config.constants.THDRatings;
import com.game.treasureHunt.config.constants.THJspConstants;
import com.game.treasureHunt.service.gaming.GamingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

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
    public String gamingQuestions(@RequestParam String rating, ModelMap modelMap) {
        modelMap.addAttribute("ratings", rating);
        modelMap.addAttribute("questions",getGamingService().sendQuestions(rating));
        return THJspConstants.Game.QUESTIONS;
    }

    public GamingService getGamingService() {
        return gamingService;
    }
}
