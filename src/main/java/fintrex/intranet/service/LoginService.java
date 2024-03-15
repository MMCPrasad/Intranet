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
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
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

    @Autowired
    JdbcTemplate temp;

//    @Autowired
//    UserTypeRepo ut;
    public User checkLogin(String username) {
        return serv.findByUsername(username).orElse(null);
    }

//    public UserPolicy checkLogins(String username) {
//        return servi.findByUsername(username).orElse(null);
//    }
    public Map<String, Object> checkLogins(String username) {
        try {
            Map<String, Object> user = temp.queryForMap("select u.id,u.username,e.branch from `hris_new`.user u join `hris_new`.employee e on u.employee_id=e.id where u.`username`=? and e.status='active'", username);
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

//    public String getDashboard(Integer userTypeId) {
//        return ut.findById(userTypeId).get().getDashboard();
//    }
}
