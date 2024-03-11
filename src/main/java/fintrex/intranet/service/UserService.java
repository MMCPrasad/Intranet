/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.User;
import fintrex.intranet.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    UserRepo repo;

    public Iterable<User> getAllUsers() {
        return repo.findAll();
    }

    public User getUser(Integer id) {
        return repo.findById(id).orElse(null);
    }

    public User saveUser(User user) {

        return repo.save(user);
    }

    public Iterable<SlimSelectDTO> getUserIdAndName(String search) {
        return repo.getIdAndUsername("%" + search.trim() + "%");
    }

    public Iterable<SlimSelectDTO> getEmp(String search) {
        return repo.getEmp("%" + search.trim() + "%");
    }

    public Iterable<SlimSelectDTO> getBranch(String search) {
        return repo.getBranch("%" + search.trim() + "%");
    }

    public Iterable<SlimSelectDTO> searchAdminUsers(String search) {
        return repo.searchAdminUsers("%" + search.trim() + "%");
    }

    public User saveTicketType(User user) {

        return repo.save(user);
    }

}
