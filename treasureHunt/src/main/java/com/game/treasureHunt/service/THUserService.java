package com.game.treasureHunt.service;

import com.game.treasureHunt.config.forms.THUserForm;
import org.springframework.stereotype.Component;

@Component
public interface THUserService
{
    String loggedUserRole(String userName);
    Boolean userAuthentication(THUserForm userForm);

}
