package com.game.treasureHunt.service.gaming;

import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public interface GamingService {
    public List<String> sendQuestions(String rating);
    public List<Map<String, String>> setQuestionAnswer(List<String> questionsList);

    public List<String> sendGifts();
}
