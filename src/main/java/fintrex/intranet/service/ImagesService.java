/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.model.Images;
import fintrex.intranet.repo.ImagesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author L580
 */
@Service
public class ImagesService {

    @Autowired
    ImagesRepo repo;

    public Images save(String path) {
        Images img = new Images();
        img.setPath(path);
        return repo.save(img);
    }

    public Images update(Integer id, String path) {
        Images img = repo.findById(id).get();
        img.setPath(path);
        return repo.save(img);
    }

    public Iterable<Images> findAll() {
        return repo.findAll();
    }

}
