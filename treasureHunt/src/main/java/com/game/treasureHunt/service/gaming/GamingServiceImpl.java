package com.game.treasureHunt.service.gaming;

import com.game.treasureHunt.config.constants.THD;
import com.game.treasureHunt.config.constants.THDRatings;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Optional;

@Service
public class GamingServiceImpl implements GamingService {

    @Override
    public List<String> sendQuestions(String rating) {
        List<String> questionsList = new ArrayList<>();
        if (rating != null && !rating.isEmpty()) {
            String enumName = rating.toUpperCase()+ "QUESTIONCONSTANTS";
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
}
