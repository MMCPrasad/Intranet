/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AnnouncementDataTable;
import fintrex.intranet.repo.AnnouncementRepo;
import fintrex.intranet.model.Annoucement;
import java.io.File;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.core.mapping.AggregateReference;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author L580
 */
@Service
public class AnnouncementService {

    @Autowired
    private DataTableRepo<AnnouncementDataTable> userDt;
    @Autowired
    private AnnouncementRepo repo;

    public DataTablesResponse<AnnouncementDataTable> getAnnoucements(DataTableRequest param) throws Exception {
        return userDt.getData(AnnouncementDataTable.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `announcement` X WHERE TRUE");

    }

    public DataTablesResponse<AnnouncementDataTable> getAnnoucementTable(DataTableRequest param) throws Exception {
        return userDt.getData(AnnouncementDataTable.class, param, "SELECT `id`,`name`,path,CONCAT(`date`) as `date` FROM `announcement` WHERE `status`='active'");

    }

    public Annoucement getNewses(Integer id) throws Exception {
        Annoucement sys = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public Annoucement updateAnnoucement(Integer id, String name, String date, String path) throws Exception {
        Annoucement user = repo.findById(id).get();
        user.setName(name);
        user.setDate(date);
        user.setPath(path);
        user = repo.save(user);
        return user;
    }

    public Annoucement getAnnoucement(Integer id) throws Exception {
        Annoucement sys = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public Annoucement deactivateAnnoucement(Integer id) throws Exception {
        Annoucement syst = repo.findById(id).get();
        syst.setStatus("deactivate");
        syst = repo.save(syst);
        return syst;
    }

    public Annoucement reactivateAnnoucement(Integer id) throws Exception {
        Annoucement systems = repo.findById(id).get();
        systems.setStatus("active");
        systems = repo.save(systems);
        return systems;
    }

    public Annoucement save(String name, String date, MultipartFile file) throws Exception {
        Annoucement system = new Annoucement();
        system.setName(name);
        system.setDate(date);
        system.setStatus("active");
        system = repo.save(system);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Announcement\\" + system.getId() + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Annoucement update(Integer id, String name, String date, MultipartFile file) throws Exception {
        Annoucement system = repo.findById(id).get();
        system.setName(name);
        system.setDate(date);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Announcement\\" + id + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Iterable<Annoucement> findAllActiveImages() {
        return repo.findByStatus("active");
    }

}
