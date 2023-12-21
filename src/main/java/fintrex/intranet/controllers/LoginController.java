package fintrex.intranet.controllers;

import fintrex.intranet.model.User;
import fintrex.intranet.model.UserPolicy;
import fintrex.intranet.service.LoginService;
import jakarta.servlet.http.HttpSession;
import java.util.Hashtable;
import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.ldap.InitialLdapContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

    @Autowired
    LoginService servr;

    @PostMapping("/login")
    public String checkLogin(@RequestParam String username, @RequestParam String password, HttpSession session) {

        User user = servr.checkLogin(username);

        if (user == null) {
            return "error";
        } else {

            Hashtable props = new Hashtable();
            props.put(Context.SECURITY_PRINCIPAL, username + "@fintrexfinance.com");
            props.put(Context.SECURITY_CREDENTIALS, password);
            props.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
            props.put(Context.PROVIDER_URL, "ldap://ad1.fintrex.lk:389");

            try {
                InitialLdapContext c = new InitialLdapContext(props, null);
                session.setAttribute("uid", user.getId());
                session.setAttribute("username", username);
//            session.setAttribute("type", user.getUserType().getId());
//            String dashboard = servr.getDashboard(user.getUserType().getId());
//            session.setAttribute("dashboard", dashboard);

                return "ok";

            } catch (javax.naming.CommunicationException e) {
                e.printStackTrace();
                return "error";
            } catch (NamingException e) {
                e.printStackTrace();
                return "error";
            }

        }
    }

    @PostMapping("/login_policy")
    public String checkLogins(@RequestParam String username, @RequestParam String password, HttpSession session) {

        UserPolicy userr = servr.checkLogins(username);

        if (userr == null) {
            return "error";
        } else {

            Hashtable props = new Hashtable();
            props.put(Context.SECURITY_PRINCIPAL, username + "@fintrexfinance.com");
            props.put(Context.SECURITY_CREDENTIALS, password);
            props.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
            props.put(Context.PROVIDER_URL, "ldap://ad1.fintrex.lk:389");

            try {
                InitialLdapContext c = new InitialLdapContext(props, null);
                session.setAttribute("uid", userr.getId());
                session.setAttribute("username", username);
//            session.setAttribute("type", user.getUserType().getId());
//            String dashboard = servr.getDashboard(user.getUserType().getId());
//            session.setAttribute("dashboard", dashboard);

                return "ok";

            } catch (javax.naming.CommunicationException e) {
                e.printStackTrace();
                return "error";
            } catch (NamingException e) {
                e.printStackTrace();
                return "error";
            }

        }
    }

}
