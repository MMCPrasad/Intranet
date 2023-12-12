package fintrex.intranet.controllers;

import fintrex.intranet.model.User;
import fintrex.intranet.model.UserPolicy;
import fintrex.intranet.service.LoginService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

    @Autowired
    LoginService servr;

    @PostMapping("/login")
    public String checkLogin(@RequestParam String username, HttpSession session) {

        User user = servr.checkLogin(username);

        if (user == null) {
            return "error";
        } else {

            session.setAttribute("uid", user.getId());
            session.setAttribute("username", username);
//            session.setAttribute("type", user.getUserType().getId());
//            String dashboard = servr.getDashboard(user.getUserType().getId());
//            session.setAttribute("dashboard", dashboard);

            return "ok";

        }
    }

    @PostMapping("/login_policy")
    public String checkLogins(@RequestParam String username, HttpSession session) {

        UserPolicy userr = servr.checkLogins(username);

        if (userr == null) {
            return "error";
        } else {

            session.setAttribute("uid", userr.getId());
            session.setAttribute("username", username);
//            session.setAttribute("type", user.getUserType().getId());
//            String dashboard = servr.getDashboard(user.getUserType().getId());
//            session.setAttribute("dashboard", dashboard);

            return "ok";

        }
    }

}
