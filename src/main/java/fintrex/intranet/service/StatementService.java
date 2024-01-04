/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.dto.StatementDTO;
import fintrex.intranet.model.Statement;
import fintrex.intranet.repo.StateTypeRepo;
import fintrex.intranet.repo.StatementRepo;
import java.io.File;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.core.mapping.AggregateReference;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author L580
 */
@Service
public class StatementService {

    @Autowired
    private DataTableRepo<StatementDTO> userDt;
    @Autowired
    private StatementRepo repo;
    @Autowired
    private StateTypeRepo repor;

    public DataTablesResponse<StatementDTO> getStatements(DataTableRequest param) throws Exception {
        return userDt.getData(StatementDTO.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `financial_statements` X WHERE TRUE");

    }

    public DataTablesResponse<StatementDTO> getAnnual(DataTableRequest param) throws Exception {
        return userDt.getData(StatementDTO.class, param, "SELECT `id`, `name`,`path` FROM `financial_statements` WHERE `type` = '1'");

    }

    public DataTablesResponse<StatementDTO> getBiAnnual(DataTableRequest param) throws Exception {
        return userDt.getData(StatementDTO.class, param, "SELECT `id`, `name`,`path` FROM `financial_statements` WHERE `type` = '2'");

    }

    public Iterable<SlimSelectDTO> getType(String search) {
        return repor.getType("%" + search.trim() + "%");
    }

    public Statement getStatementses(Integer id) throws Exception {
        Statement sys = repo.findById(id).get();
        return sys;
    }

    public Statement updateStatements(Integer id, String name, String type, String path) throws Exception {
        Statement user = repo.findById(id).get();
        user.setName(name);
        user.setType(type);
        user.setPath(path);
        user = repo.save(user);
        return user;
    }

    public Statement deactivateStatements(Integer id) throws Exception {
        Statement syst = repo.findById(id).get();
        syst.setStatus("deactivate");
        syst = repo.save(syst);
        return syst;
    }

    public Statement reactivateStatements(Integer id) throws Exception {
        Statement systems = repo.findById(id).get();
        systems.setStatus("active");
        systems = repo.save(systems);
        return systems;
    }

    public Statement save(String name, String type, MultipartFile file) throws Exception {
        Statement system = new Statement();
        system.setName(name);
        system.setType(type);
        system.setStatus("active");
        system = repo.save(system);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Statements\\" + system.getId() + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Statement update(Integer id, String name, String type, MultipartFile file) throws Exception {
        Statement system = repo.findById(id).get();
        system.setName(name);
        system.setType(type);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Statements\\" + id + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Iterable<Statement> findAllActiveImages() {
        return repo.findByStatus("active");
    }

}
