/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.FormDto;
import fintrex.intranet.dto.DepartmentEmpDto;
import fintrex.intranet.dto.MemberDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.Members;
import fintrex.intranet.model.Forms;
import fintrex.intranet.repo.FormRepo;
import fintrex.intranet.repo.DepartmentRepo;
import fintrex.intranet.repo.MemberRepo;
import jakarta.faces.component.UpdateModelException;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.NotFoundException;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author cpm.999cc
 */
@Service
public class FormsService {

    @Autowired
    private DataTableRepo<FormDto> userDts;

    @Autowired
    FormRepo reporr;

    public DataTablesResponse<FormDto> getForm(DataTableRequest param, Integer userId) throws Exception {
        return userDts.getData(FormDto.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `forms` X WHERE subtype = (SELECT `department` FROM `users` WHERE `id`= ?)", userId);

    }

    public Forms getForms(Integer id) throws Exception {
        Forms not = reporr.findById(id).get();
        return not;
    }

    public Forms deactivateForms(Integer id) throws Exception {
        Forms syst = reporr.findById(id).get();
        syst.setStatus("deactivate");
        syst = reporr.save(syst);
        return syst;
    }

    public Forms reactivateForms(Integer id) throws Exception {
        Forms systems = reporr.findById(id).get();
        systems.setStatus("active");
        systems = reporr.save(systems);
        return systems;
    }

    public Forms saves(String name, String link, HttpSession session) throws Exception {
        Forms system = new Forms();
        system.setName(name);
        system.setLink(link);
        String departmentFromSession = (String) session.getAttribute("department");
        system.setSubtype(departmentFromSession);
        system.setStatus("active");
        system = reporr.save(system);

        return reporr.save(system);
    }

    public Forms updates(Integer id, String name, String link, HttpSession session) throws Exception {
        Forms system = reporr.findById(id).get();
        system.setName(name);
        system.setLink(link);
        String departmentFromSession = (String) session.getAttribute("department");
        system.setSubtype(departmentFromSession);

        return reporr.save(system);
    }

//    public Iterable<Forms> findAllActiveImagess(Integer uid) {
//        return reporr.findByStatus(uid);
//
//    }
    public Iterable<Forms> findAllActiveImages() {
        return reporr.findByStatus("active");
    }
}
