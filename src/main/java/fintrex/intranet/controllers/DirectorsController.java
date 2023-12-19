/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AnnouncementDataTable;

import fintrex.intranet.dto.DirectorDataTable;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.Directors;
import fintrex.intranet.service.DirectorsService;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MultiValueMap;
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

@RestController
@RequestMapping("/director")
public class DirectorsController {

    @Autowired
    DirectorsService service;

    @PostMapping("/directors")
    public DataTablesResponse<DirectorDataTable> getDirectors(@RequestBody DataTableRequest param) throws Exception {
        return service.getDirectors(param);
    }

    @PostMapping("/search-role")
    public Iterable<SlimSelectDTO> getRole(@RequestParam String search) throws Exception {
        return service.getRole(search);
    }

    @GetMapping("/image")
    public Iterable<Directors> getAllActiveImages() {
        return service.findAllActiveImages();
    }
//    @GetMapping("/data")
//    public Iterable<Directors> getAllImage() {
//        return service.findAlls();
//    }

    @GetMapping("/details/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getDirector(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/update-director/{id}")
    public Directors getUser(@PathVariable Integer id) throws Exception {
        return service.getDirector(id);
    }

    @PostMapping("/update-director")
    public ResponseEntity<CommonResponse> updateDirector(@RequestParam Integer id, @RequestParam String name, @RequestParam String role, @RequestParam String designation, @RequestParam String model, @RequestParam String path) throws Exception {
        service.updateDirector(id, name, role, designation, model, path);
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
    public Directors upload(MultipartHttpServletRequest req) throws Exception {
        String name = req.getParameter("name");
        String designation = req.getParameter("designation");
        String model = req.getParameter("model");
        String role = req.getParameter("role");
        MultipartFile file = req.getFile("file");
        return service.save(name, designation, model, role, file);
    }

    @PostMapping("/update")
    @ResponseBody
    public Directors update(MultipartHttpServletRequest req) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String designation = req.getParameter("designation");
        String model = req.getParameter("model");
        String role = req.getParameter("role");
        MultipartFile file = req.getFile("file");
        return service.update(id, name, designation, model, role, file);
    }

    @GetMapping("/path/view/{name}")
    @ResponseBody
    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("E:\\chirantha\\intranet\\Directors\\" + name);

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
