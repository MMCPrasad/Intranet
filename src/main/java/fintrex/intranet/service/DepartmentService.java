/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AboutUsDto;
import fintrex.intranet.dto.DepartmentEmpDto;
import fintrex.intranet.dto.MemberDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.Members;
import fintrex.intranet.model.AboutUs;
import fintrex.intranet.repo.AboutUsRepo;
import fintrex.intranet.repo.DepartmentRepo;
import fintrex.intranet.repo.MemberRepo;
import jakarta.servlet.http.HttpSession;
import java.io.File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author cpm.999cc
 */
@Service
public class DepartmentService {

    @Autowired
    private DataTableRepo<DepartmentEmpDto> departmentdto;
    @Autowired
    private DataTableRepo<MemberDto> userDt;
    @Autowired
    private DataTableRepo<AboutUsDto> userDts;

    @Autowired
    DepartmentRepo repo;
    @Autowired
    MemberRepo repor;
    @Autowired
    AboutUsRepo reporr;

    public DataTablesResponse<DepartmentEmpDto> getUser(DataTableRequest param) throws Exception {
        return departmentdto.getData(DepartmentEmpDto.class, param, "SELECT e.id, e.callname,(SELECT `name` FROM `hris_new`.`designation` WHERE `id`=e.designation) AS desig,(SELECT `name` FROM `hris_new`.`department` WHERE `id`=e.department) AS deprt,e.office_tel_no,e.ext_no,e.email,e.office_mobile_no,e.ext_no,e.email,e.office_mobile_no FROM `hris_new`.employee e JOIN `hris_new`.emp_grade g ON e.grade=g.id AND e.branch='3' WHERE e.status ='active' AND e.`department`= " + param.getFilter() + " ORDER BY g.`odr` ASC");
    }

    public Iterable<SlimSelectDTO> getDepartment(String search) {
        return repo.getDepartment("%" + search.trim() + "%");
    }

    public DataTablesResponse<MemberDto> getDirectors(DataTableRequest param, Integer userId) throws Exception {
        return userDt.getData(MemberDto.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`username` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `team_members` X WHERE subtype = (SELECT `department` FROM `users` WHERE `id`= ?)", userId);

    }

    public Members updateDirector(Integer id, String name, String designation, String path) throws Exception {
        Members user = repor.findById(id).get();
        user.setName(name);
        user.setDesignation(designation);
        user.setPath(path);
        user = repor.save(user);
        return user;
    }

    public Members getDirector(Integer id) throws Exception {
        Members sys = repor.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public Members deactivateDirector(Integer id) throws Exception {
        Members syst = repor.findById(id).get();
        syst.setStatus("deactivate");
        syst = repor.save(syst);
        return syst;
    }

    public Members reactivateDirector(Integer id) throws Exception {
        Members systems = repor.findById(id).get();
        systems.setStatus("active");
        systems = repor.save(systems);
        return systems;
    }

    public Members save(String name, String designation, HttpSession session, MultipartFile file) throws Exception {
        Members system = new Members();
        system.setName(name);
        system.setDesignation(designation);
        String departmentFromSession = (String) session.getAttribute("department");
        system.setSubtype(departmentFromSession);
        system.setStatus("active");
        system = repor.save(system);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\teammembers\\" + system.getId() + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repor.save(system);
    }

    public Members update(Integer id, String name, String designation, HttpSession session, MultipartFile file) throws Exception {
        Members system = repor.findById(id).get();
        system.setName(name);
        system.setDesignation(designation);
        String departmentFromSession = (String) session.getAttribute("department");
        system.setSubtype(departmentFromSession);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\teammembers\\" + id + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repor.save(system);
    }

//    public Iterable<Members> findAllActiveImages() {
//        return repor.findByStatus("active");
//    }
    public Iterable<Members> findAllActiveImages(Integer uid) {
        return repor.findByStatus(uid);

    }

    public DataTablesResponse<AboutUsDto> getAbout(DataTableRequest param, Integer userId) throws Exception {
        return userDts.getData(AboutUsDto.class, param, "SELECT x.`id`,x.`about_us`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `department` X WHERE subtype = (SELECT `department` FROM `users` WHERE `id`= ?)", userId);

    }

    public AboutUs getAbotus(Integer id) throws Exception {
        AboutUs sys = reporr.findById(id).get();
        return sys;
    }

    public AboutUs deactivateAbotus(Integer id) throws Exception {
        AboutUs syst = reporr.findById(id).get();
        syst.setStatus("deactivate");
        syst = reporr.save(syst);
        return syst;
    }

    public AboutUs reactivateAbotus(Integer id) throws Exception {
        AboutUs systems = reporr.findById(id).get();
        systems.setStatus("active");
        systems = reporr.save(systems);
        return systems;
    }

    public AboutUs saves(String about_us, HttpSession session, MultipartFile file) throws Exception {
        AboutUs system = new AboutUs();
        system.setAbout_us(about_us);
        String departmentFromSession = (String) session.getAttribute("department");
        system.setSubtype(departmentFromSession);
        system.setStatus("active");
        system = reporr.save(system);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\AboutUs\\" + system.getId() + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return reporr.save(system);
    }

    public AboutUs updates(Integer id, String about_us, HttpSession session, MultipartFile file) throws Exception {
        AboutUs system = reporr.findById(id).get();
        system.setAbout_us(about_us);
        String departmentFromSession = (String) session.getAttribute("department");
        system.setSubtype(departmentFromSession);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\AboutUs\\" + id + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return reporr.save(system);
    }

    public Iterable<AboutUs> findAllActiveImagess(Integer uid) {
        return reporr.findByStatus(uid);

    }
}
