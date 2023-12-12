/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.DepartmentEmpDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author cpm.999cc
 */
@RestController
@RequestMapping("/department")
public class DepartmentController {

    @Autowired
    DepartmentService service;

    @PostMapping("/dep")
    public DataTablesResponse<DepartmentEmpDto> getUser(@RequestBody DataTableRequest param) throws Exception {
        return service.getUser(param);

    }

    @PostMapping("/search-department")
    public Iterable<SlimSelectDTO> getDepartment(@RequestParam String search) throws Exception {
        return service.getDepartment(search);
    }

}
