/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AnnouncementDataTable;
import fintrex.intranet.dto.DelegationDto;
import fintrex.intranet.repo.AnnouncementRepo;
import fintrex.intranet.model.Delegation;
import fintrex.intranet.repo.DelegationRepo;
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
public class DelegationService {

    @Autowired
    private DataTableRepo<DelegationDto> userDt;
    @Autowired
    private DelegationRepo repo;

    public DataTablesResponse<DelegationDto> getDelegations(DataTableRequest param) throws Exception {
        return userDt.getData(DelegationDto.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `delegation_authority` X WHERE TRUE");

    }

    public DataTablesResponse<DelegationDto> getDelegationTable(DataTableRequest param) throws Exception {
        return userDt.getData(DelegationDto.class, param, "SELECT `id`,`name`,`path` FROM `delegation_authority` WHERE `status`='active'");

    }

    public Delegation getNewses(Integer id) throws Exception {
        Delegation sys = repo.findById(id).get();
        return sys;
    }

    public Delegation getDelegation(Integer id) throws Exception {
        Delegation sys = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public Delegation deactivateDelegation(Integer id) throws Exception {
        Delegation syst = repo.findById(id).get();
        syst.setStatus("deactivate");
        syst = repo.save(syst);
        return syst;
    }

    public Delegation reactivateDelegation(Integer id) throws Exception {
        Delegation systems = repo.findById(id).get();
        systems.setStatus("active");
        systems = repo.save(systems);
        return systems;
    }

    public Delegation save(String name, MultipartFile file) throws Exception {
        Delegation system = new Delegation();
        system.setName(name);
        system.setStatus("active");
        system = repo.save(system);

        String directoryPath = "intranet\\Delegations";

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

    public Delegation update(Integer id, String name, MultipartFile file) throws Exception {
        Delegation system = repo.findById(id).get();
        system.setName(name);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Delegations\\" + id + "." + split[split.length - 1]);
            file.transferTo(Path.of(des.getAbsolutePath()));
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Iterable<Delegation> findAllActiveImages() {
        return repo.findByStatus("active");
    }

}
