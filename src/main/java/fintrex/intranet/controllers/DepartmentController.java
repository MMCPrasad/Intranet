/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AboutUsDto;
import fintrex.intranet.dto.DepartmentEmpDto;
import fintrex.intranet.dto.MemberDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.service.DepartmentService;
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
import fintrex.intranet.model.Members;
import fintrex.intranet.model.AboutUs;
import jakarta.servlet.http.HttpSession;

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

    @PostMapping("/directors")
    public DataTablesResponse<MemberDto> getDirectors(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
        return service.getDirectors(param, (Integer) session.getAttribute("uid"));
    }

//    @GetMapping("/image")
//    public Iterable<Members> getAllActiveImages() {
//        return service.findAllActiveImages();
//    }
    @GetMapping("/image")
    public ResponseEntity<Iterable<Members>> getAllActiveImages(HttpSession session) {
        try {
            Iterable<Members> activeImages = service.findAllActiveImages((Integer) session.getAttribute("uid"));
            return new ResponseEntity<>(activeImages, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/details/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getDirector(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/update-director/{id}")
    public Members getUser(@PathVariable Integer id) throws Exception {
        return service.getDirector(id);
    }

    @PostMapping("/update-director")
    public ResponseEntity<CommonResponse> updateDirector(@RequestParam Integer id, @RequestParam String name, @RequestParam String designation, @RequestParam String path) throws Exception {
        service.updateDirector(id, name, designation, path);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-director")
    public ResponseEntity<CommonResponse> deactivateDirector(@RequestParam Integer id) throws Exception {
        service.deactivateDirector(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-director")
    public ResponseEntity<CommonResponse> reactivateDirector(@RequestParam Integer id) throws Exception {
        service.reactivateDirector(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/save")
    @ResponseBody
    public Members upload(MultipartHttpServletRequest req, HttpSession session) throws Exception {
        String name = req.getParameter("name");
        String designation = req.getParameter("designation");
        MultipartFile file = req.getFile("file");

        return service.save(name, designation, session, file);
    }

    @PostMapping("/update")
    @ResponseBody
    public Members update(MultipartHttpServletRequest req, HttpSession session) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String designation = req.getParameter("designation");
        MultipartFile file = req.getFile("file");
        return service.update(id, name, designation, session, file);
    }

    @GetMapping("/path/view/{name}")
    @ResponseBody
    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("intranet\\teammembers\\" + name);

        if (!file.exists()) {
            resp.sendError(404, "file not found");
            return;
        }

        OutputStream out = resp.getOutputStream();
        FileInputStream in = new FileInputStream(file);
        byte[] buffer = new byte[4096];
        int length;
        while ((length = in.read(buffer)) > 0) {
            out.write(buffer, 0, length);
        }
        in.close();
        out.flush();

    }

    @PostMapping("/aboutus")
    public DataTablesResponse<AboutUsDto> getAbout(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
        return service.getAbout(param, (Integer) session.getAttribute("uid"));

    }

    @GetMapping("/covers")
    public ResponseEntity<Iterable<AboutUs>> getAllActiveImagess(HttpSession session) {
        try {
            Iterable<AboutUs> activeImages = service.findAllActiveImagess((Integer) session.getAttribute("uid"));
            return new ResponseEntity<>(activeImages, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/detailss/{id}")
    public ResponseEntity<CommonResponse> detailss(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getAbotus(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-aboutus")
    public ResponseEntity<CommonResponse> deactivateAbotus(@RequestParam Integer id) throws Exception {
        service.deactivateAbotus(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-aboutus")
    public ResponseEntity<CommonResponse> reactivateAbotus(@RequestParam Integer id) throws Exception {
        service.reactivateAbotus(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/saves")
    @ResponseBody
    public AboutUs uploads(MultipartHttpServletRequest req, HttpSession session) throws Exception {

        String about_us = req.getParameter("about_us");
        MultipartFile file = req.getFile("file");
        return service.saves(about_us, session, file);
    }

    @PostMapping("/updates")
    @ResponseBody
    public AboutUs updates(MultipartHttpServletRequest req, HttpSession session) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String about_us = req.getParameter("about_us");
        MultipartFile file = req.getFile("file");
        return service.updates(id, about_us, session, file);
    }

    @GetMapping("/path/aboutus/{name}")
    @ResponseBody
    public void views(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("intranet\\AboutUs\\" + name);

        if (!file.exists()) {
            resp.sendError(404, "file not found");
            return;
        }

        OutputStream out = resp.getOutputStream();
        FileInputStream in = new FileInputStream(file);
        byte[] buffer = new byte[4096];
        int length;
        while ((length = in.read(buffer)) > 0) {
            out.write(buffer, 0, length);
        }
        in.close();
        out.flush();

    }

}
