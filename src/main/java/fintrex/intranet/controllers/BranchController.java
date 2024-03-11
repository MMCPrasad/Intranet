/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.BranchEmpDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.service.BranchService;
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
@RequestMapping("/branch")
public class BranchController {

    @Autowired
    BranchService service;

    @PostMapping("/emp")
    public DataTablesResponse<BranchEmpDto> getUsers(@RequestBody DataTableRequest param) throws Exception {
        return service.getUsers(param);

    }

    @PostMapping("/search-emp")
    public DataTablesResponse<BranchEmpDto> getEmps(@RequestBody DataTableRequest param) throws Exception {
        return service.getEmps(param);

    }

    @PostMapping("/search-branch")
    public Iterable<SlimSelectDTO> getBranch(@RequestParam String search) throws Exception {
        return service.getBranch(search);
    }

    @PostMapping("/search-branches")
    public Iterable<SlimSelectDTO> getBranches(@RequestParam String search) throws Exception {
        return service.getBranches(search);
    }

}
