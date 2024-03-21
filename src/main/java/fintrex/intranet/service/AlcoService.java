/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AnnouncementDataTable;
import fintrex.intranet.dto.AlcoDto;
import fintrex.intranet.repo.AnnouncementRepo;
import fintrex.intranet.model.Alco;
import fintrex.intranet.repo.AlcoRepo;
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
public class AlcoService {

    @Autowired
    private DataTableRepo<AlcoDto> userDt;
    @Autowired
    private AlcoRepo repo;

    public DataTablesResponse<AlcoDto> getAlcos(DataTableRequest param) throws Exception {
        return userDt.getData(AlcoDto.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `alco` X WHERE TRUE");

    }

    public DataTablesResponse<AlcoDto> getAlcoTable(DataTableRequest param) throws Exception {
        return userDt.getData(AlcoDto.class, param, "SELECT `id`,`name`,`path` FROM `alco` WHERE `status`='active'");

    }

    public Alco getNewses(Integer id) throws Exception {
        Alco sys = repo.findById(id).get();
        return sys;
    }

    public Alco getAlco(Integer id) throws Exception {
        Alco sys = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public Alco deactivateAlco(Integer id) throws Exception {
        Alco syst = repo.findById(id).get();
        syst.setStatus("deactivate");
        syst = repo.save(syst);
        return syst;
    }

    public Alco reactivateAlco(Integer id) throws Exception {
        Alco systems = repo.findById(id).get();
        systems.setStatus("active");
        systems = repo.save(systems);
        return systems;
    }

    public Alco save(String name, MultipartFile file) throws Exception {
        Alco system = new Alco();
        system.setName(name);
        system.setStatus("active");
        system = repo.save(system);

        String directoryPath = "intranet\\Alcos";

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

    public Alco update(Integer id, String name, MultipartFile file) throws Exception {
        Alco system = repo.findById(id).get();
        system.setName(name);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Alcos\\" + id + "." + split[split.length - 1]);
            file.transferTo(Path.of(des.getAbsolutePath()));
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Iterable<Alco> findAllActiveImages() {
        return repo.findByStatus("active");
    }

}
