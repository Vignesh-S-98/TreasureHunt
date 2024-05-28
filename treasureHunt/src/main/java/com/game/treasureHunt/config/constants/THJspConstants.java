package com.game.treasureHunt.config.constants;

public interface THJspConstants {
    interface Action {
        String CUSTOMERLOGIN = "login/";
        String GAME = "game/";
    }
    interface Login {
        String LOGIN = Action.CUSTOMERLOGIN+"THLogin";
        String WELCOME = Action.CUSTOMERLOGIN+"THWelcome";
    }
    interface Game{
        String GAME = Action.GAME+"THGaming";
    }
}
