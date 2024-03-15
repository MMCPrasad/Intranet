/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.FormDto;
import fintrex.intranet.dto.DepartmentEmpDto;
import fintrex.intranet.dto.MemberDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.service.FormsService;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import fintrex.intranet.model.Forms;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author cpm.999cc
 */
@RestController
@RequestMapping("/form")
public class FormsController {

    @Autowired
    FormsService service;

    @PostMapping("/forms")
    public DataTablesResponse<FormDto> getForm(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
        return service.getForm(param, (Integer) session.getAttribute("uid"));

    }

    @GetMapping("/form-load")
    public Iterable<Forms> getAllActiveImages() {
        return service.findAllActiveImages();
    }

//    @GetMapping("/covers")
//    public ResponseEntity<Iterable<Forms>> getAllActiveImagess(HttpSession session) {
//        try {
//            Iterable<Forms> activeImages = service.findAllActiveImagess((Integer) session.getAttribute("uid"));
//            return new ResponseEntity<>(activeImages, HttpStatus.OK);
//        } catch (Exception e) {
//            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//        }
//    }
    @GetMapping("/details/{id}")
    public Forms getForms(@PathVariable Integer id) throws Exception {
        return service.getForms(id);
    }

    @PostMapping("/deactivate-form")
    public ResponseEntity<CommonResponse> deactivateForms(@RequestParam Integer id) throws Exception {
        service.deactivateForms(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-form")
    public ResponseEntity<CommonResponse> reactivateForms(@RequestParam Integer id) throws Exception {
        service.reactivateForms(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/saves")
    @ResponseBody
    public Forms uploads(MultipartHttpServletRequest req, HttpSession session) throws Exception {

        String name = req.getParameter("name");
        String link = req.getParameter("link");
        return service.saves(name, link, session);
    }

    @PostMapping("/updates")
    @ResponseBody
    public Forms updates(MultipartHttpServletRequest req, HttpSession session) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String link = req.getParameter("link");
        return service.updates(id, name, link, session);
    }

}
