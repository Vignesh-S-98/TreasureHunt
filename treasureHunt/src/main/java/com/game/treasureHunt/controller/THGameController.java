package com.game.treasureHunt.controller;

import com.game.treasureHunt.config.constants.THJspConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
public class THGameController {
    @RequestMapping(value = "/game", method = RequestMethod.GET)
    public String gaming(){
        return THJspConstants.Game.GAME;
    }
}
