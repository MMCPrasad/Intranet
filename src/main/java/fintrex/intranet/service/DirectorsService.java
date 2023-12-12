/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AnnouncementDataTable;
import fintrex.intranet.dto.DirectorDataTable;
import fintrex.intranet.dto.SlimSelectDTO;

import fintrex.intranet.model.Directors;
import fintrex.intranet.repo.DirectorRepo;
import fintrex.intranet.repo.DirectorRoleRepo;
import java.io.File;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author L580
 */
@Service
public class DirectorsService {

    @Autowired
    private DataTableRepo<DirectorDataTable> userDt;
    @Autowired
    private DirectorRepo repo;
    @Autowired
    private DirectorRoleRepo repor;

    public DataTablesResponse<DirectorDataTable> getDirectors(DataTableRequest param) throws Exception {
        return userDt.getData(DirectorDataTable.class, param, "SELECT `id`,`name`,`status` FROM `directors` WHERE TRUE");

    }

    public Iterable<SlimSelectDTO> getRole(String search) {
        return repor.getRole("%" + search.trim() + "%");
    }

    public Directors updateDirector(Integer id, String name, String role, String designation, String model, String path) throws Exception {
        Directors user = repo.findById(id).get();
        user.setName(name);
        user.setRole(role);
        user.setDesignation(designation);
        user.setModel(model);
        user.setPath(path);
        user = repo.save(user);
        return user;
    }

    public Directors getDirector(Integer id) throws Exception {
        Directors sys = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public Directors deactivateDirector(Integer id) throws Exception {
        Directors syst = repo.findById(id).get();
        syst.setStatus("deactivate");
        syst = repo.save(syst);
        return syst;
    }

    public Directors reactivateDirector(Integer id) throws Exception {
        Directors systems = repo.findById(id).get();
        systems.setStatus("active");
        systems = repo.save(systems);
        return systems;
    }

    public Directors save(String name, String designation, String model, String role, MultipartFile file) throws Exception {
        Directors system = new Directors();
        system.setName(name);
        system.setDesignation(designation);
        system.setModel(model);
        system.setRole(role);
        system.setStatus("active");
        system = repo.save(system);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("E:\\chirantha\\intranet\\Directors\\" + system.getId() + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Directors update(Integer id, String name, String designation, String model, String role, MultipartFile file) throws Exception {
        Directors system = repo.findById(id).get();
        system.setName(name);
        system.setDesignation(designation);
        system.setModel(model);
        system.setRole(role);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("E:\\chirantha\\intranet\\Directors\\" + id + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Iterable<Directors> findAllActiveImages() {
        return repo.findByStatus("active");
    }
//    public Iterable<Directors> findAlls() {
//        return repo.findAll();
//    }
}
