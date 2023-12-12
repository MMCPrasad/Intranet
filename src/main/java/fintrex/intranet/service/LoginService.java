/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.model.User;
import fintrex.intranet.model.UserPolicy;
import fintrex.intranet.repo.UserPolicyRepo;
import fintrex.intranet.repo.UserRepo;
import fintrex.intranet.repo.UserTypeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Nevanjith
 */
@Service
public class LoginService {

    @Autowired
    UserRepo serv;

    @Autowired
    UserPolicyRepo servi;

//    @Autowired
//    UserTypeRepo ut;
    public User checkLogin(String username) {
        return serv.findByUsername(username).orElse(null);
    }

    public UserPolicy checkLogins(String username) {
        return servi.findByUsername(username).orElse(null);
    }

//    public String getDashboard(Integer userTypeId) {
//        return ut.findById(userTypeId).get().getDashboard();
//    }
}
