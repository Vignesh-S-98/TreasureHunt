package com.game.treasureHunt.service.gaming;


import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class GamingServiceImpl implements GamingService {

    @Override
    public List<String> sendQuestions(String rating) {
        List<String> questionsList = new ArrayList<>();
        if (rating != null && !rating.isEmpty()) {
            String enumName = rating.toUpperCase() + "QUESTIONCONSTANTS";
            try {
                Class<?> enumClass = Class.forName("com.game.treasureHunt.config.constants.THD$" + enumName);
                Field[] fields = enumClass.getDeclaredFields();
                for (Field field : fields) {
                    questionsList.add((String) field.get(null));
                }
            } catch (ClassNotFoundException | IllegalAccessException e) {
                e.printStackTrace(); // Handle the exception as needed
            }
        }
        return questionsList;
    }

    private List<String> getAnswers() {
        List<String> answersList = new ArrayList<>();
        String enumName = "ANSWERCONSTANTS";
        try {
            Class<?> enumClass = Class.forName("com.game.treasureHunt.config.constants.THD$" + enumName);
            Field[] fields = enumClass.getDeclaredFields();
            for (Field field : fields) {
                answersList.add((String) field.get(null));
            }
        } catch (ClassNotFoundException | IllegalAccessException e) {
            e.printStackTrace(); // Handle the exception as needed
        }
        return answersList;
    }

    public List<Map<String, String>> setQuestionAnswer(List<String> questionsList) {
        List<Map<String, String>> result = new ArrayList<>();
        Map<String, String> map = new HashMap<>();
        List<String> answersList = getAnswers();
        for (int i = 0; i < questionsList.size(); i++) {
            map.put(questionsList.get(i), answersList.get(i));
            result.add(map);
        }
        return result;
    }

    @Override
    public List<String> sendGifts() {
        List<String> giftsList = new ArrayList<>();
        String enumName = "GIFTCONSTANTS";
        try {
            Class<?> enumClass = Class.forName("com.game.treasureHunt.config.constants.THD$" + enumName);
            Field[] fields = enumClass.getDeclaredFields();
            for (Field field : fields) {
                giftsList.add((String) field.get(null));
            }
        } catch (ClassNotFoundException | IllegalAccessException e) {
            e.printStackTrace(); // Handle the exception as needed
        }
        return giftsList;
    }
}
