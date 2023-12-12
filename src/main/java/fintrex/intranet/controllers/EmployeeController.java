///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package fintrex.intranet.controllers;
//
//import fintrex.intranet.datatable.DataTableRequest;
//import fintrex.intranet.datatable.DataTablesResponse;
//import fintrex.intranet.dto.EmployeeDto;
//import fintrex.intranet.model.Employees;
//import fintrex.intranet.model.Notice;
//import fintrex.intranet.service.EmployeeService;
//import java.sql.Date;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//
//@RestController
//@RequestMapping("/employee")
//public class EmployeeController {
//
//    @Autowired
//    EmployeeService service;
//
//    @PostMapping("/save-employee")
//    public ResponseEntity<CommonResponse> saveEmployees(@RequestParam String name, @RequestParam String designation, @RequestParam Integer telephone, @RequestParam Integer extention, @RequestParam Integer mobile, @RequestParam String email, @RequestParam Date dob, @RequestParam Integer branch, @RequestParam(required = false) Integer department) throws Exception {
//        service.saveEmployees(name, designation, telephone, extention, mobile, email, dob, branch, department);
//        CommonResponse response = new CommonResponse("Success!", 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }
//
//    @PostMapping("/employees")
//    public DataTablesResponse<EmployeeDto> getEmps(@RequestBody DataTableRequest param) throws Exception {
//        return service.getEmps(param);
//    }
//
//    @GetMapping("/update-employee/{id}")
//    public Employees getUser(@PathVariable Integer id) throws Exception {
//        return service.getNotice(id);
//    }
//
//    @PostMapping("/update-employee")
//    public ResponseEntity<CommonResponse> updateEmployee(@RequestParam Integer id, @RequestParam String name, @RequestParam String designation, @RequestParam Integer telephone, @RequestParam Integer extention, @RequestParam Integer mobile, @RequestParam String email, @RequestParam Date dob, @RequestParam Integer branch, @RequestParam(required = false) Integer department) throws Exception {
//        service.updateEmployee(id, name, designation, telephone, extention, mobile, email, dob, branch, department);
//        CommonResponse response = new CommonResponse("Success!", 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }
//
//    @PostMapping("/deactivate-employee")
//    public ResponseEntity<CommonResponse> deactivateEmployee(@RequestParam Integer id) throws Exception {
//        service.deactivateEmployee(id);
//        CommonResponse response = new CommonResponse("Success!", 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }
//
//    @PostMapping("/reactivate-employee")
//    public ResponseEntity<CommonResponse> reactivateEmployee(@RequestParam Integer id) throws Exception {
//        service.reactivateEmployee(id);
//        CommonResponse response = new CommonResponse("Success!", 200);
//        return new ResponseEntity<>(response, HttpStatus.OK);
//    }
//}
