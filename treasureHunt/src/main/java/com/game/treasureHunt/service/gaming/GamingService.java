package com.game.treasureHunt.service.gaming;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface GamingService {
        public List<String> sendQuestions(String rating);
}
