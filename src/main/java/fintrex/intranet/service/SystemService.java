/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.dto.SystemDto;
import fintrex.intranet.repo.SystemRepo;
import fintrex.intranet.model.Systems;
import fintrex.intranet.repo.SystemTypeRepo;
import java.io.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import static org.springframework.web.servlet.function.RequestPredicates.path;

/**
 *
 * @author L580
 */
@Service
public class SystemService {

    @Autowired
    private DataTableRepo<SystemDto> userDt;
    @Autowired
    private SystemRepo repo;
    @Autowired
    private SystemTypeRepo repor;

    public DataTablesResponse<SystemDto> getSystems(DataTableRequest param) throws Exception {
        return userDt.getData(SystemDto.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on` FROM `systems` X WHERE TRUE");

    }

    public Iterable<SlimSelectDTO> getType(String search) {
        return repor.getType("%" + search.trim() + "%");
    }

    public Systems updateSystem(Integer id, String name, String path, String type, String link) throws Exception {
        Systems user = repo.findById(id).get();
        user.setName(name);
        user.setPath(path);
        user.setType(type);
        user.setLink(link);
        user = repo.save(user);
        return user;
    }

    public Systems getSystem(Integer id) throws Exception {
        Systems sys = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public Systems deactivateSystem(Integer id) throws Exception {
        Systems syst = repo.findById(id).get();
        syst.setStatus("deactivate");
        syst = repo.save(syst);
        return syst;
    }

    public Systems reactivateSystem(Integer id) throws Exception {
        Systems systems = repo.findById(id).get();
        systems.setStatus("active");
        systems = repo.save(systems);
        return systems;
    }

    public Systems save(String name, String type, String link, MultipartFile file) throws Exception {
        Systems system = new Systems();
        system.setName(name);
        system.setType(type);
        system.setLink(link);
        system.setStatus("active");
        system = repo.save(system);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Systems\\" + system.getId() + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Systems update(Integer id, String name, String type, String link, MultipartFile file) throws Exception {
        Systems system = repo.findById(id).get();
        system.setName(name);
        system.setType(type);
        system.setLink(link);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Systems\\" + id + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Iterable<Systems> findAllActiveImages() {
        return repo.findByStatus("active");
    }

}
