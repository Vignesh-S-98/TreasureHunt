package com.game.treasureHunt.config.constants;

public interface THJspConstants {
    interface Action {
        String USERFLOW = "userFlow/";
        String GAME = "game/";
    }
    interface UserFlow {
        String LOGIN = Action.USERFLOW +"THLogin";
        String WELCOME = Action.USERFLOW +"THWelcome";
        String END = Action.USERFLOW+"THEnd";
    }
    interface Game{
        String GAME = Action.GAME+"THGaming";
        String ANSWER = Action.GAME+"THAnswer";
        String QUESTION = Action.GAME+"THQuestion";
        String GIFT = Action.GAME+"THGift";

    }
}
