/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import fintrex.intranet.service.PageService;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author asus
 */
@Controller
public class PageController {

    @GetMapping("/")
    public String dashboard() {
        return "dashboard";
    }

    @GetMapping("/home")
    public String dashboard2() {
        return "dashboard";
    }

    @GetMapping("/departments")
    public String departments() {
        return "departments";
    }

    @GetMapping("/directors")
    public String directors() {
        return "directors";
    }

    @GetMapping("/branches")
    public String branches() {
        return "branches";
    }

    @GetMapping("/system")
    public String system() {
        return "system";
    }

    @GetMapping("/addadminsystem")
    public String addadminsystem() {
        return "addadminsystem";
    }

    @GetMapping("/admincontrol")
    public String admincontrol() {
        return "admincontrol";
    }

    @GetMapping("/documents")
    public String documents() {
        return "documents";
    }

    @GetMapping("/notices")
    public String notices() {
        return "notices";
    }

    @GetMapping("/employees")
    public String employees() {
        return "employees";
    }

    @GetMapping("/announcement")
    public String announcement() {
        return "announcement";
    }

    @GetMapping("/policies")
    public String policies() {
        return "policies";
    }

    @GetMapping("/wsc")
    public String wsc() {
        return "wsc";
    }

    @GetMapping("/gallery")
    public String gallery() {
        return "gallery";
    }

    @GetMapping("/it")
    public String it() {
        return "it";
    }

    @GetMapping("/admin_system")
    public String admin_system() {
        return "admin_system";
    }

    @GetMapping("/news")
    public String news() {
        return "news";
    }

    @GetMapping("/direcptmgt")
    public String direcptmgt() {
        return "direcptmgt";
    }

    @GetMapping("/whistleblowing")
    public String whistleblowing() {
        return "whistleblowing";
    }

    @GetMapping("/view_policies")
    public String view_policies() {
        return "view_policies";
    }

    @GetMapping("/policy")
    public String policy() {
        return "policy";
    }

    @GetMapping("/cptmgt")
    public String cptmgt() {
        return "cptmgt";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/newdashboard")
    public String newdashboard() {
        return "newdashboard";
    }

    @GetMapping("/seniormngment")
    public String seniormngment() {
        return "seniormngment";
    }

    @GetMapping("/brnchmnger")
    public String brnchmnger() {
        return "brnchmnger";
    }

    @GetMapping("/ideas")
    public String ideas() {
        return "ideas";
    }

    @GetMapping("/aboutus")
    public String aboutus() {
        return "aboutus";
    }

    @GetMapping("/product")
    public String product() {
        return "product";
    }

    @GetMapping("/users")
    public String users() {
        return "users";
    }

    @GetMapping("/user_type")
    public String user_type() {
        return "user_type";
    }

    @GetMapping("/users_policy")
    public String users_policy() {
        return "users_policy";
    }

    @GetMapping("/user_type_policy")
    public String user_type_policy() {
        return "user_type_policy";
    }

    @GetMapping("/view_dep_policies")
    public String view_dep_policies() {
        return "view_dep_policies";
    }

    @GetMapping("/login_policy")
    public String login_policy() {
        return "login_policy";
    }

    @GetMapping("/promo")
    public String promo() {
        return "promo";
    }

    @GetMapping("/deposits")
    public String deposits() {
        return "deposits";
    }

    @GetMapping("/fina_statement")
    public String fina_statement() {
        return "fina_statement";
    }

    @GetMapping("/statement")
    public String statement() {
        return "statement";
    }

    @GetMapping("/wishes")
    public String wishes() {
        return "wishes";
    }

    @GetMapping("/coverimage")
    public String coverimage() {
        return "coverimage";
    }

    @Autowired
    PageService ser;

    @GetMapping("/pages")
    @ResponseBody
    public String getPages(HttpSession session) {
//        return ser.getPagesForUser(2 + "");
        Integer uid = (Integer) session.getAttribute("uid");
        return ser.getPagesForUser(uid.toString());
    }

    @GetMapping("/uid")
    @ResponseBody
    public String uid(HttpSession session) {
        session.setAttribute("uid", 1);
        return session.getAttribute("uid").toString();
    }
}
