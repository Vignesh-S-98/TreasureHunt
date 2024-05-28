package com.game.treasureHunt.service.user;

import com.game.treasureHunt.config.constants.THUserCredentials;
import com.game.treasureHunt.config.forms.THUserForm;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class THUserServiceImpl implements THUserService {
    public String loggedUserRole(String userName) {
        return Optional.ofNullable(userName)
                .filter(name -> name.equalsIgnoreCase(THUserCredentials.AdminID))
                .map(name -> "admin")
                .orElseGet(() ->
                        Optional.ofNullable(userName)
                                .filter(name -> name.equalsIgnoreCase(THUserCredentials.CustomerID))
                                .map(name -> "customer")
                                .orElse("invalid user"));
    }

    @Override
    public Boolean userAuthentication(THUserForm userForm) {
        if(userForm.getUserRole().equalsIgnoreCase("invalid")){
            return false;
        }
        if (!userForm.getUserName().isEmpty()) {
            if (userForm.getUserRole().equalsIgnoreCase("admin") &&
                    userForm.getPassword().equalsIgnoreCase(THUserCredentials.AdminPassword)) {
                return true;
            }
            if (userForm.getUserRole().equalsIgnoreCase("customer") &&
                    userForm.getPassword().equalsIgnoreCase(THUserCredentials.CustomerPassword)) {
                return true;
            }
        }
        return false;
    }


}
