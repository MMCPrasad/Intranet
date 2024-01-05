/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.BranchEmpDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.repo.BranchRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author cpm.999cc
 */
@Service
public class BranchService {

    @Autowired
    private DataTableRepo<BranchEmpDto> branchdto;

    @Autowired
    BranchRepo repo;

    public DataTablesResponse<BranchEmpDto> getUsers(DataTableRequest param) throws Exception {
        return branchdto.getData(BranchEmpDto.class, param, "SELECT e.id, e.callname,(SELECT `name` FROM `hris_new`.`designation` WHERE `id`=e.designation) AS desig,(SELECT `name` FROM `hris_new`.`branch` WHERE `id`=e.branch) AS brnch,e.office_tel_no,e.ext_no,e.email,e.office_mobile_no,g.name FROM `hris_new`.employee e JOIN `hris_new`.emp_grade g ON e.grade=g.id AND e.branch!='3' WHERE e.status ='active' AND e.branch= " + param.getFilter() + "ORDER BY g.`odr` ASC");
    }

    public DataTablesResponse<BranchEmpDto> getEmps(DataTableRequest param) throws Exception {
        return branchdto.getData(BranchEmpDto.class, param, "SELECT e.id,e.callname,(SELECT `name` FROM `hris_new`.`designation` WHERE `id` = e.designation) AS `desig`,(SELECT `name` FROM `hris_new`.`branch` WHERE `id` = e.branch) AS `brnch`,office_tel_no, e.ext_no,e.email,e.office_mobile_no FROM `hris_new`.employee AS e WHERE e.status = 'active'");
    }

    public Iterable<SlimSelectDTO> getBranch(String search) {
        return repo.getBranch("%" + search.trim() + "%");
    }

    public Iterable<SlimSelectDTO> getBranches(String search) {
        return repo.getBranches("%" + search.trim() + "%");
    }

}
