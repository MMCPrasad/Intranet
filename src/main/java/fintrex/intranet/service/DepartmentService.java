/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.DepartmentEmpDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.repo.DepartmentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author cpm.999cc
 */
@Service
public class DepartmentService {

    @Autowired
    private DataTableRepo<DepartmentEmpDto> departmentdto;

    @Autowired
    DepartmentRepo repo;

    public DataTablesResponse<DepartmentEmpDto> getUser(DataTableRequest param) throws Exception {
        return departmentdto.getData(DepartmentEmpDto.class, param, "SELECT e.id, e.callname,(SELECT `name` FROM `hris_new`.`designation` WHERE `id`=e.designation) AS desig,(SELECT `name` FROM `hris_new`.`department` WHERE `id`=e.department) AS deprt,e.office_tel_no,e.ext_no,e.email,e.office_mobile_no,e.ext_no,e.email,e.office_mobile_no FROM `hris_new`.employee e JOIN `hris_new`.emp_grade g ON e.grade=g.id AND e.branch='3' WHERE e.status ='active' AND e.department= " + param.getFilter() + "ORDER BY g.`odr` ASC");
    }

    public Iterable<SlimSelectDTO> getDepartment(String search) {
        return repo.getDepartment("%" + search.trim() + "%");
    }

}
