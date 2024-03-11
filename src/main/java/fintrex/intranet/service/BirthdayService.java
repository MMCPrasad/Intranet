/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.model.BdayWishes;
import fintrex.intranet.dto.BirthdayEmpDto;
import fintrex.intranet.dto.BirthdayWishDto;
import fintrex.intranet.dto.GetPagesAccDTO;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.repo.BirthdayRepo;
import fintrex.intranet.repo.WishRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author cpm.999cc
 */
@Service
public class BirthdayService {

    @Autowired
    private DataTableRepo<BirthdayEmpDto> dobdob;
    @Autowired
    private DataTableRepo<BirthdayWishDto> dobdobs;

    @Autowired
    BirthdayRepo repo;
    @Autowired
    WishRepo repor;

    public DataTablesResponse<BirthdayEmpDto> getDobs(DataTableRequest param) throws Exception {
        return dobdob.getData(BirthdayEmpDto.class, param, "SELECT e.`id`,e.`callname`,SUBSTR(CONCAT(SUBSTRING(CURDATE(), 1, 5), SUBSTR(e.`dob`, 6)), 6) AS `dob`,(SELECT d.`name` FROM `hris_new`.`department` d WHERE d.`id` = e.`department`) AS `branch`FROM `hris_new`.`employee` e WHERE STR_TO_DATE(CONCAT(SUBSTRING(CURDATE(), 1, 5), SUBSTR(e.`dob`, 6)), '%Y-%m-%d') BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 15 DAY) AND e.`status` = 'active'");
    }

    public Iterable<SlimSelectDTO> getDob(String search) {
        return repo.getDob("%" + search.trim() + "%");
    }

    public BdayWishes saveWish(String birthday, String name, String wish) {

        BdayWishes notice = new BdayWishes();
        notice.setBirthday(birthday);
        notice.setName(name);
        notice.setWish(wish);
        notice.setStatus("active");
        notice = repor.save(notice);

        return notice;
    }

    public DataTablesResponse<BirthdayWishDto> getWishes(DataTableRequest param) throws Exception {
        return dobdobs.getData(BirthdayWishDto.class, param, "SELECT `id`,birthday,`name`,wish,`status` FROM `birthdays` WHERE TRUE");

    }

    public DataTablesResponse<BirthdayWishDto> getWishess(DataTableRequest param) throws Exception {
        return dobdobs.getData(BirthdayWishDto.class, param, "SELECT `id`, birthday, `name`, wish, `status` FROM `birthdays` WHERE `birthday`=?");

    }

    public Iterable<BirthdayWishDto> getWishesByBirthday(String callName) {
        return repor.getWishesByBirthday(callName);
    }

//    public DataTablesResponse<BirthdayWishDto> getWishess(DataTableRequest param) throws Exception {
//        String data = param.getData();
//        String sqlQuery = "SELECT `id`, birthday, `name`, wish, `status` FROM `birthdays` WHERE `birthday`=?";
//        return dobdobs.getData(BirthdayWishDto.class, param, sqlQuery, new Object[]{data});
//    }
    public BdayWishes deactivateWish(Integer id) throws Exception {
        BdayWishes syst = repor.findById(id).get();
        syst.setStatus("deactivate");
        syst = repor.save(syst);
        return syst;
    }

    public BdayWishes reactivateWish(Integer id) throws Exception {
        BdayWishes systems = repor.findById(id).get();
        systems.setStatus("active");
        systems = repor.save(systems);
        return systems;
    }

    public BdayWishes getWish(Integer id) throws Exception {
        BdayWishes sys = repor.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

}
