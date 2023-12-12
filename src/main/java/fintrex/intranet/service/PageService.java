/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import fintrex.intranet.repo.PageRepo;

/**
 *
 * @author asus
 */
@Service
public class PageService {

    @Autowired
    PageRepo repo;

    public String getPagesForUser(String userId) {
        return repo.getAllPages(userId);
    }
}