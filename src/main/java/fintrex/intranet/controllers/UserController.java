/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.User;
import fintrex.intranet.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.core.mapping.AggregateReference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService ser;

    @GetMapping("")
    public Iterable<User> getAllUsers() {
        return ser.getAllUsers();
    }

    @GetMapping("/{id}")
    public User getUser(@PathVariable Integer id) {
        return ser.getUser(id);
    }

    @GetMapping("/save")
    public User getUser(String username, String name, Integer utype) {
        User user = new User();
        user.setName(name);
        user.setUsername(username);

        return ser.saveUser(user);
    }

//    @PostMapping("/search-employee")
//    public Iterable<SlimSelectDTO> searchEmp(@RequestParam String search) throws Exception {
//        return ser.getEmp(search);
//    }
}
