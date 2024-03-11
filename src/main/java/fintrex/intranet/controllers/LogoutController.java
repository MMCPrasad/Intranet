/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.service.LogoutService;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LogoutController {

//    @RequestMapping("/logout")
//    @ResponseBody
//    public void logout(HttpSession session, HttpServletResponse resp) {
//        logout.logout(session, resp);
//
//    }
    @GetMapping("/logout")
    public String Logout(HttpSession session) {
        session.removeAttribute("uid");
        session.removeAttribute("username");
        return "dashboard";
    }

    @GetMapping("/logoutPol")
    public String LogoutPol(HttpSession session) {
        session.removeAttribute("uid");
        session.removeAttribute("username");
        return "dashboard";
    }
}
