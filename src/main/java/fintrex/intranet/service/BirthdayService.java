/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.BirthdayEmpDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.repo.BirthdayRepo;
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
    BirthdayRepo repo;

//    public DataTablesResponse<BirthdayEmpDto> getUsers1(DataTableRequest param) throws Exception {
//        return dobdto.getData(BirthdayEmpDto.class, param, "SELECT `id`,`name`,`dob` FROM `employees` WHERE DATE_FORMAT(`dob`, '%m-%d') >= DATE_FORMAT(CURDATE(), '%m-%d')AND DATE_FORMAT(`dob`, '%m-%d') <= DATE_FORMAT(DATE_ADD(CURDATE(), INTERVAL 5 DAY), '%m-%d');");
//    }
    public DataTablesResponse<BirthdayEmpDto> getDobs(DataTableRequest param) throws Exception {
        return dobdob.getData(BirthdayEmpDto.class, param, "SELECT e.`id`,e.`callname`,SUBSTR(CONCAT(SUBSTRING(CURDATE(), 1, 5), SUBSTR(e.`dob`, 6)), 6) AS `dob`,(SELECT d.`name` FROM `hris_new`.`department` d WHERE d.`id` = e.`department`) AS `branch`FROM `hris_new`.`employee` e WHERE STR_TO_DATE(CONCAT(SUBSTRING(CURDATE(), 1, 5), SUBSTR(e.`dob`, 6)), '%Y-%m-%d') BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 10 DAY) AND e.`status` = 'active'");
    }

    public Iterable<SlimSelectDTO> getDob(String search) {
        return repo.getDob("%" + search.trim() + "%");
    }

}
