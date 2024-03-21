/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AnnouncementDataTable;
import fintrex.intranet.dto.FDDto;
import fintrex.intranet.repo.AnnouncementRepo;
import fintrex.intranet.model.Fd;
import fintrex.intranet.repo.FdRepo;
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
public class FdService {

    @Autowired
    private DataTableRepo<FDDto> userDt;
    @Autowired
    private FdRepo repo;

    public DataTablesResponse<FDDto> getFds(DataTableRequest param) throws Exception {
        return userDt.getData(FDDto.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `fd` X WHERE TRUE");

    }

    public DataTablesResponse<FDDto> getFdTable(DataTableRequest param) throws Exception {
        return userDt.getData(FDDto.class, param, "SELECT `id`,`name`,`path` FROM `fd` WHERE `status`='active'");

    }

    public Fd getNewses(Integer id) throws Exception {
        Fd sys = repo.findById(id).get();
        return sys;
    }

    public Fd getFd(Integer id) throws Exception {
        Fd sys = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public Fd deactivateFd(Integer id) throws Exception {
        Fd syst = repo.findById(id).get();
        syst.setStatus("deactivate");
        syst = repo.save(syst);
        return syst;
    }

    public Fd reactivateFd(Integer id) throws Exception {
        Fd systems = repo.findById(id).get();
        systems.setStatus("active");
        systems = repo.save(systems);
        return systems;
    }

    public Fd save(String name, MultipartFile file) throws Exception {
        Fd system = new Fd();
        system.setName(name);
        system.setStatus("active");
        system = repo.save(system);

        String directoryPath = "intranet\\Fds";

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

    public Fd update(Integer id, String name, MultipartFile file) throws Exception {
        Fd system = repo.findById(id).get();
        system.setName(name);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Fds\\" + id + "." + split[split.length - 1]);
            file.transferTo(Path.of(des.getAbsolutePath()));
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Iterable<Fd> findAllActiveImages() {
        return repo.findByStatus("active");
    }

}
