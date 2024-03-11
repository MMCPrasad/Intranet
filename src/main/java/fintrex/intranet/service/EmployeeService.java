///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package fintrex.intranet.service;
//
//import fintrex.intranet.datatable.DataTableRepo;
//import fintrex.intranet.datatable.DataTableRequest;
//import fintrex.intranet.datatable.DataTablesResponse;
//import fintrex.intranet.dto.EmployeeDto;
//import fintrex.intranet.repo.EmployeeRepo;
//import fintrex.intranet.model.Employees;
//import java.sql.Date;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
///**
// *
// * @author L580
// */
//@Service
//public class EmployeeService {
//
//    @Autowired
//    private EmployeeRepo repo;
//    @Autowired
//    private DataTableRepo<EmployeeDto> empdto;
//
//    public Employees saveEmployees(String name, String designation, Integer telephone, Integer extention, Integer mobile, String email, Date dob, Integer branch, Integer department) {
//
//        Employees employees = new Employees();
//        employees.setName(name);
//        employees.setDesignation(designation);
//        employees.setTelephone(telephone);
//        employees.setExtension(extention);
//        employees.setMobile(mobile);
//        employees.setEmail(email);
//        employees.setDob(dob);
//        employees.setBranch(branch);
//        employees.setDepartment(department);
//        employees.setStatus("active");
//        employees = repo.save(employees);
//
//        return employees;
//    }
//
//    public DataTablesResponse<EmployeeDto> getEmps(DataTableRequest param) throws Exception {
//        return empdto.getData(EmployeeDto.class, param, "SELECT `id`,`name`,`status` FROM `employees` WHERE TRUE");
//    }
//
//    public Employees getNotice(Integer id) throws Exception {
//        Employees not = repo.findById(id).get();
////        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
////        user.setUserTypeName(utype.getName());
//        return not;
//    }
//
//    public Employees updateEmployee(Integer id, String name, String designation, Integer telephone, Integer extention, Integer mobile, String email, Date dob, Integer branch, Integer department) throws Exception {
//        Employees user = repo.findById(id).get();
//        user.setName(name);
//        user.setDesignation(designation);
//        user.setTelephone(telephone);
//        user.setExtension(extention);
//        user.setMobile(mobile);
//        user.setEmail(email);
//        user.setDob(dob);
//        user.setBranch(branch);
//        user.setDepartment(department);
//        user = repo.save(user);
//        return user;
//    }
//
//    public Employees deactivateEmployee(Integer id) throws Exception {
//        Employees syst = repo.findById(id).get();
//        syst.setStatus("deactivate");
//        syst = repo.save(syst);
//        return syst;
//    }
//
//    public Employees reactivateEmployee(Integer id) throws Exception {
//        Employees systems = repo.findById(id).get();
//        systems.setStatus("active");
//        systems = repo.save(systems);
//        return systems;
//    }
//}
