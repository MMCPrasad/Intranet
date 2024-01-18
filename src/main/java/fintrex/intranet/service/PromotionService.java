/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.PromotionDTO;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.dto.SystemDto;
import fintrex.intranet.repo.SystemRepo;
import fintrex.intranet.model.Promotions;
import fintrex.intranet.repo.PromotionRepo;
import fintrex.intranet.repo.SystemTypeRepo;
import java.io.File;
import java.nio.file.Path;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import static org.springframework.web.servlet.function.RequestPredicates.path;

/**
 *
 * @author L580
 */
@Service
public class PromotionService {

    @Autowired
    private DataTableRepo<PromotionDTO> userDt;
    @Autowired
    private PromotionRepo repo;

    public DataTablesResponse<PromotionDTO> getPromo(DataTableRequest param) throws Exception {
        return userDt.getData(PromotionDTO.class, param, "SELECT x.`id`,x.`heading`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `promotions` X WHERE TRUE");

    }

    public Promotions updatePromo(Integer id, String heading, String para, String path) throws Exception {
        Promotions user = repo.findById(id).get();
        user.setHeading(heading);
        user.setPara(para);
        user.setPath(path);
        user = repo.save(user);
        return user;
    }

    public Promotions getPromo(Integer id) throws Exception {
        Promotions sys = repo.findById(id).get();
        return sys;
    }

    public Promotions deactivatePromo(Integer id) throws Exception {
        Promotions syst = repo.findById(id).get();
        syst.setStatus("deactivate");
        syst = repo.save(syst);
        return syst;
    }

    public Promotions reactivatePromo(Integer id) throws Exception {
        Promotions systems = repo.findById(id).get();
        systems.setStatus("active");
        systems = repo.save(systems);
        return systems;
    }

    public Promotions save(String heading, String para, MultipartFile file) throws Exception {
        Promotions system = new Promotions();
        system.setHeading(heading);
        system.setPara(para);
        system.setStatus("active");
        system = repo.save(system);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Promotions\\" + system.getId() + "." + split[split.length - 1]);
            file.transferTo(Path.of(des.getAbsolutePath()));
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Promotions update(Integer id, String heading, String para, MultipartFile file) throws Exception {
        Promotions system = repo.findById(id).get();
        system.setHeading(heading);
        system.setPara(para);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Promotions\\" + id + "." + split[split.length - 1]);
            file.transferTo(Path.of(des.getAbsolutePath()));
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Iterable<Promotions> findAllActiveImages() {
        return repo.findByStatus("active");
    }

}
