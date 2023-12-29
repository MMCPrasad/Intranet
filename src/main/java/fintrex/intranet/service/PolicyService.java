/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.GetPagesAccDTO;
import fintrex.intranet.dto.GetPagesDTO;
import fintrex.intranet.dto.GetPagesPolicyAccDTO;
import fintrex.intranet.dto.PolicyDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.dto.UserDataTable;
import fintrex.intranet.dto.UserTypeDataTable;

import fintrex.intranet.model.Policy;
import fintrex.intranet.model.UserPolicy;
import fintrex.intranet.model.UserTypePolicy;
import fintrex.intranet.repo.ManualRepo;
import fintrex.intranet.repo.PagePolicyRepo;
import fintrex.intranet.repo.PageRepo;
import fintrex.intranet.repo.PolDepRepo;
import fintrex.intranet.repo.PolicyRepo;
import fintrex.intranet.repo.PolicyTypeRepo;
import fintrex.intranet.repo.UserPolicyRepo;
import fintrex.intranet.repo.UserRepo;
import fintrex.intranet.repo.UserTypePolicyRepo;
import fintrex.intranet.repo.UserTypeRepo;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.core.mapping.AggregateReference;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author L580
 */
@Service
public class PolicyService {

    @Autowired
    private DataTableRepo<PolicyDto> userDt;
    @Autowired
    private PolicyRepo repo;
    @Autowired
    private ManualRepo repor;
    @Autowired
    private PolDepRepo reporr;
    @Autowired
    private PolicyTypeRepo rep;

    public DataTablesResponse<PolicyDto> getPolicies(DataTableRequest param) throws Exception {
        return userDt.getData(PolicyDto.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on` FROM `policies` X WHERE TRUE");

    }

    public DataTablesResponse<PolicyDto> getMannual(DataTableRequest param) throws Exception {
        return userDt.getData(PolicyDto.class, param, "SELECT `id`, `name`,path FROM `policies` WHERE `type` = '1' AND `subtype` = " + param.getFilter() + "");

    }

    public DataTablesResponse<PolicyDto> getDepartment(DataTableRequest param) throws Exception {
        return userDt.getData(PolicyDto.class, param, "SELECT `id`, `name`,path FROM `policies` WHERE `type` = '1' AND `subtype` = " + param.getFilter() + "");

    }

    public DataTablesResponse<PolicyDto> getgenPol(DataTableRequest param) throws Exception {
        return userDt.getData(PolicyDto.class, param, "SELECT `id`, `name`,path FROM `policies` WHERE `type` = '2'");

    }

    public DataTablesResponse<PolicyDto> getgenPro(DataTableRequest param) throws Exception {
        return userDt.getData(PolicyDto.class, param, "SELECT `id`, `name`,path FROM `policies` WHERE `type` = '3'");

    }

    public Iterable<SlimSelectDTO> getManual(String search) {
        return repor.getManual("%" + search.trim() + "%");
    }

    public Iterable<SlimSelectDTO> getDep(String search) {
        return reporr.getDep("%" + search.trim() + "%");
    }

    public Iterable<GetPagesPolicyAccDTO> getPageAccess(Integer uid) {
//    public Iterable<Page> getPage() {
        return pageRepo.getPageAccess(uid);
    }

    public Iterable<SlimSelectDTO> getDeps(String search) {
        return reporr.getDeps("%" + search.trim() + "%");
    }

    public Iterable<SlimSelectDTO> getType(String search) {
        return rep.getType("%" + search.trim() + "%");
    }

    public Policy updatePolicy(Integer id, String name, String path) throws Exception {
        Policy user = repo.findById(id).get();
        user.setName(name);
        user.setPath(path);

        user = repo.save(user);
        return user;
    }

    public Policy getPolicy(Integer id) throws Exception {
        Policy sys = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public Policy deactivatePolicy(Integer id) throws Exception {
        Policy syst = repo.findById(id).get();
        syst.setStatus("deactivate");
        syst = repo.save(syst);
        return syst;
    }

    public Policy reactivatePolicy(Integer id) throws Exception {
        Policy systems = repo.findById(id).get();
        systems.setStatus("active");
        systems = repo.save(systems);
        return systems;
    }

    public Policy save(String name, String type, String subtype, MultipartFile file) throws Exception {
        Policy system = new Policy();
        system.setName(name);
        system.setType(type);
        system.setSubtype(subtype);
        system.setStatus("active");
        system = repo.save(system);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Polices\\" + system.getId() + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Policy update(Integer id, String name, String type, String subtype, MultipartFile file) throws Exception {
        Policy system = repo.findById(id).get();
        system.setName(name);
        system.setType(type);
        system.setSubtype(subtype);
        if (file != null) {
            String[] split = file.getOriginalFilename().split("\\.");
            File des = new File("intranet\\Polices\\" + id + "." + split[split.length - 1]);
            file.transferTo(des);
            system.setPath(des.getName());
        }
        return repo.save(system);
    }

    public Iterable<Policy> findAll() {
        return repo.findAll();
    }

    @Autowired
    UserPolicyRepo userRepo;

    @Autowired
    PagePolicyRepo pageRepo;

    @Autowired
    UserTypePolicyRepo userTypeRepo;

    @Autowired
    private DataTableRepo<UserDataTable> userDts;
    @Autowired
    private DataTableRepo<UserTypeDataTable> userTypeDt;

    public DataTablesResponse<UserDataTable> getUsers(DataTableRequest param) throws Exception {
        return userDts.getData(UserDataTable.class, param, "SELECT `id`,`username`,`name`,(SELECT `name` FROM `user_type_policy` WHERE `id`= u.`userType`) AS `userTypes`,(SELECT d.`name` FROM `users` d WHERE d.`id`=`ent_by`) AS `ent_by`,ent_on,`status` FROM `users_policy` u WHERE TRUE ");
    }

    public DataTablesResponse<UserTypeDataTable> getUserType(DataTableRequest param) throws Exception {
        return userTypeDt.getData(UserTypeDataTable.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on` FROM `user_type_policy` X WHERE TRUE ");
    }

    public UserPolicy getUser(Integer id) throws Exception {
        UserPolicy user = userRepo.findById(id).get();
        UserTypePolicy utype = userTypeRepo.findById(user.getUsertype().getId()).get();
        user.setUserTypeName(utype.getName());
        return user;
    }

    public UserTypePolicy saveUserType(String name, String pages) throws Exception {

        List<Integer> pageNumbers = Arrays.asList(new ObjectMapper().readValue(pages, Integer[].class));

        String pagesJson = new ObjectMapper().writeValueAsString(pageNumbers);

        UserTypePolicy page = new UserTypePolicy();
        page.setName(name);
        page.setPages(pagesJson);
        page.setStatus("active");

        page = userTypeRepo.save(page);

        return page;

    }

    public UserTypePolicy updateUserType(Integer id, String name, String pages) throws Exception {

        List<Integer> pageNumbers = Arrays.asList(new ObjectMapper().readValue(pages, Integer[].class));

        String pagesJson = new ObjectMapper().writeValueAsString(pageNumbers);

        UserTypePolicy page = userTypeRepo.findById(id).get();
        page.setName(name);
        page.setPages(pagesJson);
        page.setStatus("active");

        page = userTypeRepo.save(page);

        return page;

    }

    public UserPolicy saveUser(String name, String username, Integer userType) throws Exception {
        UserPolicy user = new UserPolicy();
        user.setUsername(username);
        user.setName(name);
        user.setUsertype(AggregateReference.to(userType));
        user.setStatus("active");
        user = userRepo.save(user);
        return user;
    }

    public UserPolicy updateUser(Integer id, String name, String username, Integer userType) throws Exception {
        UserPolicy user = userRepo.findById(id).get();
        user.setUsername(username);
        user.setName(name);
        user.setUsertype(AggregateReference.to(userType));
        user = userRepo.save(user);
        return user;
    }

    public UserTypePolicy deactivateUserType(Integer id) throws Exception {
        UserTypePolicy utype = userTypeRepo.findById(id).get();
        utype.setStatus("deactivate");
        utype = userTypeRepo.save(utype);
        return utype;
    }

    public UserTypePolicy reactivateUserType(Integer id) throws Exception {
        UserTypePolicy utype = userTypeRepo.findById(id).get();
        utype.setStatus("active");
        utype = userTypeRepo.save(utype);
        return utype;
    }

    public UserPolicy deactivateUser(Integer id) throws Exception {
        UserPolicy user = userRepo.findById(id).get();
        user.setStatus("deactivate");
        user = userRepo.save(user);
        return user;
    }

    public UserPolicy reactivateUser(Integer id) throws Exception {
        UserPolicy user = userRepo.findById(id).get();
        user.setStatus("active");
        user = userRepo.save(user);
        return user;
    }

    public Iterable<SlimSelectDTO> getUserTypeIdAndName(String search) {
        return userTypeRepo.getIdAndName("%" + search.trim() + "%");
    }
//
//    public Iterable<SlimSelectDTO> getAdminTypeIdAndName(String search) {
//        return adminTypeRepo.getAdminTypeIdAndName("%" + search.trim() + "%");
//    }
//

    public GetPagesDTO getPage() {
//    public Iterable<Page> getPage() {
        return pageRepo.getPage();
    }

    public GetPagesDTO getSelectedPage(Integer id) {
//    public Iterable<Page> getPage() {
        return pageRepo.getSelectedPage(id);
    }
}
