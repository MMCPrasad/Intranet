/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AnnouncementDataTable;
import fintrex.intranet.dto.MandateDto;
import fintrex.intranet.repo.AnnouncementRepo;
import fintrex.intranet.model.Mandate;
import fintrex.intranet.repo.MandateRepo;
import java.io.File;
import java.nio.file.Path;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.core.mapping.AggregateReference;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author L580
 */
@Service
public class MandateService {

    @Autowired
    private DataTableRepo<MandateDto> userDt;
    @Autowired
    private MandateRepo repo;

    public DataTablesResponse<MandateDto> getForms(DataTableRequest param) throws Exception {
        return userDt.getData(MandateDto.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `forms_mandates` X WHERE TRUE");

    }

    public DataTablesResponse<MandateDto> getFormTable(DataTableRequest param) throws Exception {
        return userDt.getData(MandateDto.class, param, "SELECT `id`,`name`,`path` FROM `forms_mandates` WHERE `status`='active'");

    }

    public Mandate getNewses(Integer id) throws Exception {
        Mandate sys = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public Mandate updateForm(Integer id, String name, String date, String path) throws Exception {
        Mandate user = repo.findById(id).get();
        user.setName(name);
        user.setPath(path);
        user = repo.save(user);
        return user;
    }

    public Mandate getForm(Integer id) throws Exception {
        Mandate sys = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public Mandate deactivateForm(Integer id) throws Exception {
        Mandate syst = repo.findById(id).get();
        syst.setStatus("deactivate");
        syst = repo.save(syst);
        return syst;
    }

    public Mandate reactivateForm(Integer id) throws Exception {
        Mandate systems = repo.findById(id).get();
        systems.setStatus("active");
        systems = repo.save(systems);
        return systems;
    }

    public Mandate save(String name, MultipartFile file) throws Exception {
        Mandate system = new Mandate();
        system.setName(name);
        system.setStatus("active");
        system = repo.save(system);

        String directoryPath = "intranet\\Forms";

        File directory = new File(directoryPath);
        if (!directory.exists()) {
            if (directory.mkdirs()) {
                System.out.println("Directory created successfully");
            } else {
                throw new Exception("Failed to create directory");
            }
        }

        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File(directory, system.getId() + "." + split[split.length - 1]);
            file.transferTo(Path.of(des.getAbsolutePath()));
            system.setPath(des.getName());
        }

        return repo.save(system);
    }

    public Mandate update(Integer id, String name, MultipartFile file) throws Exception {
        Mandate system = repo.findById(id).get();
        system.setName(name);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Forms\\" + id + "." + split[split.length - 1]);
            file.transferTo(Path.of(des.getAbsolutePath()));
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Iterable<Mandate> findAllActiveImages() {
        return repo.findByStatus("active");
    }

}
