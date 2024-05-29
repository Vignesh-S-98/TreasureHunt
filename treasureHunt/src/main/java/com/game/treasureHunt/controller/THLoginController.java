package com.game.treasureHunt.controller;

import com.game.treasureHunt.config.forms.THUserForm;
import com.game.treasureHunt.config.constants.THJspConstants;
import com.game.treasureHunt.service.user.THUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"userForm"})
public class THLoginController {
    @Autowired
    private THUserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String goToLoginPage() {
        return THJspConstants.UserFlow.LOGIN;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String goToWelcomePage(@RequestParam String userName,
                                  @RequestParam String password,
                                  ModelMap modelMap) {
        THUserForm userForm = new THUserForm();
        userForm.setUserName(userName);
        userForm.setPassword(password);
        return viewPage(modelMap, userForm);
    }

    public String viewPage(ModelMap modelMap,THUserForm userForm ) {
        userForm.setUserRole(getUserService().loggedUserRole(userForm.getUserName()));
        if(getUserService().userAuthentication(userForm)){
            modelMap.addAttribute("userForm", userForm);
            return THJspConstants.UserFlow.WELCOME;
        }
        modelMap.addAttribute("errorMessage","Invalid User Credentials");
        return THJspConstants.UserFlow.LOGIN;
    }

    public THUserService getUserService() {
        return userService;
    }
}
