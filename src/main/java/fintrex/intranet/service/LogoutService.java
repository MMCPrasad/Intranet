/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.repo.UserRepo;
import fintrex.intranet.model.User;
import fintrex.intranet.model.UserPolicy;
import fintrex.intranet.repo.UserPolicyRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogoutService {

    @Autowired
    UserRepo UserRepo;
    @Autowired
    UserPolicyRepo UserRepor;

    public User Logout(String username) {
        return UserRepo.findByUsername(username).orElse(null);
    }

    public UserPolicy LogoutPol(String username) {
        return UserRepor.findByUsername(username).orElse(null);
    }
}
