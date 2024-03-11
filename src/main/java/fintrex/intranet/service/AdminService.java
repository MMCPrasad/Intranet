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
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.dto.UserDataTable;
import fintrex.intranet.dto.UserTypeDataTable;
import fintrex.intranet.model.User;
import fintrex.intranet.model.UserType;
import fintrex.intranet.repo.PageRepo;
import fintrex.intranet.repo.UserRepo;
import fintrex.intranet.repo.UserTypeRepo;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.core.mapping.AggregateReference;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

    @Autowired
    UserRepo userRepo;

    @Autowired
    PageRepo pageRepo;

    @Autowired
    UserTypeRepo userTypeRepo;

    @Autowired
    private DataTableRepo<UserDataTable> userDt;
    @Autowired
    private DataTableRepo<UserTypeDataTable> userTypeDt;

    public DataTablesResponse<UserDataTable> getUsers(DataTableRequest param) throws Exception {
        return userDt.getData(UserDataTable.class, param, "SELECT `id`,`username`,`name`,(SELECT `name` FROM `user_type` WHERE `id`= u.`userType`) AS `userTypes`,(SELECT d.`name` FROM `users` d WHERE d.`id`=u.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=u.`mod_by`) AS `mod_by`,`mod_on`,(SELECT `name` FROM `hris_new`.`department` WHERE `id` = `department`) AS department,`status` FROM `users` u WHERE TRUE ");
    }

    public DataTablesResponse<UserTypeDataTable> getUserType(DataTableRequest param) throws Exception {
        return userTypeDt.getData(UserTypeDataTable.class, param, "SELECT x.`id`,x.`name`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,`mod_on` FROM `user_type` X WHERE TRUE ");
    }

    public User getUser(Integer id) throws Exception {
        User user = userRepo.findById(id).get();
        UserType utype = userTypeRepo.findById(user.getUsertype().getId()).get();
        user.setUserTypeName(utype.getName());
        return user;
    }

    public UserType saveUserType(String name, String pages) throws Exception {

        List<Integer> pageNumbers = Arrays.asList(new ObjectMapper().readValue(pages, Integer[].class));

        String pagesJson = new ObjectMapper().writeValueAsString(pageNumbers);

        UserType page = new UserType();
        page.setName(name);
        page.setPages(pagesJson);
        page.setStatus("active");

        page = userTypeRepo.save(page);

        return page;

    }

    public UserType updateUserType(Integer id, String name, String pages) throws Exception {

        List<Integer> pageNumbers = Arrays.asList(new ObjectMapper().readValue(pages, Integer[].class));

        String pagesJson = new ObjectMapper().writeValueAsString(pageNumbers);

        UserType page = userTypeRepo.findById(id).get();
        page.setName(name);
        page.setPages(pagesJson);
        page.setStatus("active");

        page = userTypeRepo.save(page);

        return page;

    }

    public User saveUser(String name, String username, Integer userType, String department) throws Exception {
        User user = new User();
        user.setUsername(username);
        user.setName(name);
        user.setUsertype(AggregateReference.to(userType));
        user.setDepartment(department);
        user.setStatus("active");
        user = userRepo.save(user);
        return user;
    }

    public User updateUser(Integer id, String name, String username, Integer userType, String department) throws Exception {
        User user = userRepo.findById(id).get();
        user.setUsername(username);
        user.setName(name);
        user.setUsertype(AggregateReference.to(userType));
        user.setDepartment(department);
        user = userRepo.save(user);
        return user;
    }

    public UserType deactivateUserType(Integer id) throws Exception {
        UserType utype = userTypeRepo.findById(id).get();
        utype.setStatus("deactivate");
        utype = userTypeRepo.save(utype);
        return utype;
    }

    public UserType reactivateUserType(Integer id) throws Exception {
        UserType utype = userTypeRepo.findById(id).get();
        utype.setStatus("active");
        utype = userTypeRepo.save(utype);
        return utype;
    }

    public User deactivateUser(Integer id) throws Exception {
        User user = userRepo.findById(id).get();
        user.setStatus("deactivate");
        user = userRepo.save(user);
        return user;
    }

    public User reactivateUser(Integer id) throws Exception {
        User user = userRepo.findById(id).get();
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

    public Iterable<GetPagesAccDTO> getPageAccess(Integer uid) {
//    public Iterable<Page> getPage() {
        return pageRepo.getPageAccess(uid);
    }

    public GetPagesDTO getSelectedPage(Integer id) {
//    public Iterable<Page> getPage() {
        return pageRepo.getSelectedPage(id);
    }
}
