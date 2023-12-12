/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.BirthdayEmpDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.service.BirthdayService;
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
@RequestMapping("/birthday")
public class BirthdayController {

    @Autowired
    BirthdayService service;

    @PostMapping("/dob")
    public DataTablesResponse<BirthdayEmpDto> getDobs(@RequestBody DataTableRequest param) throws Exception {
        return service.getDobs(param);

    }

    @PostMapping("/search-dob")
    public Iterable<SlimSelectDTO> getDob(@RequestParam String search) throws Exception {
        return service.getDob(search);
    }

}
