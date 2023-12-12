/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.dto.SystemDto;
import fintrex.intranet.model.Systems;

import fintrex.intranet.service.SystemService;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Date;
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
@RequestMapping("/system")
public class SystemController {

    @Autowired
    SystemService service;

    @PostMapping("/systems")
    public DataTablesResponse<SystemDto> getSystems(@RequestBody DataTableRequest param) throws Exception {
        return service.getSystems(param);
    }

    @GetMapping("/images")
    public Iterable<Systems> getAllActiveImages() {
        return service.findAllActiveImages();
    }

    @PostMapping("/search-type")
    public Iterable<SlimSelectDTO> getType(@RequestParam String search) throws Exception {
        return service.getType(search);
    }

    @PostMapping("/update-system")
    public ResponseEntity<CommonResponse> updateSystem(@RequestParam Integer id, @RequestParam String name, @RequestParam String path, @RequestParam String type, @RequestParam String link) throws Exception {
        service.updateSystem(id, name, path, type, link);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/details/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getSystem(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-system")
    public ResponseEntity<CommonResponse> deactivateSystem(@RequestParam Integer id) throws Exception {
        service.deactivateSystem(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-system")
    public ResponseEntity<CommonResponse> reactivateSystem(@RequestParam Integer id) throws Exception {
        service.reactivateSystem(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/save")
    @ResponseBody
    public Systems upload(MultipartHttpServletRequest req) throws Exception {
        String name = req.getParameter("name");
        String type = req.getParameter("type");
        String link = req.getParameter("link");
        MultipartFile file = req.getFile("file");
        return service.save(name, type, link, file);
    }

    @PostMapping("/update")
    @ResponseBody
    public Systems update(MultipartHttpServletRequest req) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String type = req.getParameter("type");
        String link = req.getParameter("link");
        MultipartFile file = req.getFile("file");
        return service.update(id, name, type, link, file);
    }

    @GetMapping("/path/view/{name}")
    @ResponseBody
    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("E:\\chirantha\\intranet\\Systems\\" + name);

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
