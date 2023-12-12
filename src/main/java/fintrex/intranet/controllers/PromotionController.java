/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.PromotionDTO;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.dto.SystemDto;
import fintrex.intranet.model.Promotions;
import fintrex.intranet.service.PromotionService;

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
@RequestMapping("/promotion")
public class PromotionController {

    @Autowired
    PromotionService service;

    @PostMapping("/promotions")
    public DataTablesResponse<PromotionDTO> getPromo(@RequestBody DataTableRequest param) throws Exception {
        return service.getPromo(param);
    }

    @GetMapping("/images")
    public Iterable<Promotions> getAllActiveImages() {
        return service.findAllActiveImages();
    }

    @PostMapping("/update-promotion")
    public ResponseEntity<CommonResponse> updatePromo(@RequestParam Integer id, @RequestParam String heading, @RequestParam String para, @RequestParam String path) throws Exception {
        service.updatePromo(id, heading, para, path);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/details/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getPromo(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-promotion")
    public ResponseEntity<CommonResponse> deactivatePromo(@RequestParam Integer id) throws Exception {
        service.deactivatePromo(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-promotion")
    public ResponseEntity<CommonResponse> reactivatePromo(@RequestParam Integer id) throws Exception {
        service.reactivatePromo(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/save")
    @ResponseBody
    public Promotions upload(MultipartHttpServletRequest req) throws Exception {
        String heading = req.getParameter("heading");
        String para = req.getParameter("para");
        MultipartFile file = req.getFile("file");
        return service.save(heading, para, file);
    }

    @PostMapping("/update")
    @ResponseBody
    public Promotions update(MultipartHttpServletRequest req) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String heading = req.getParameter("heading");
        String para = req.getParameter("para");
        MultipartFile file = req.getFile("file");
        return service.update(id, heading, para, file);
    }

    @GetMapping("/path/view/{name}")
    @ResponseBody
    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("E:\\chirantha\\intranet\\Promotions\\" + name);

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
