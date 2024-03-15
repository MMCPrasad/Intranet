/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AnnouncementDataTable;
import fintrex.intranet.dto.MandateDto;
import fintrex.intranet.model.Mandate;
import fintrex.intranet.service.MandateService;
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

@RestController
@RequestMapping("/mandate")
public class MandateController {

    @Autowired
    MandateService service;

    @PostMapping("/mandates")
    public DataTablesResponse<MandateDto> getForms(@RequestBody DataTableRequest param) throws Exception {
        return service.getForms(param);
    }

    @PostMapping("/mandate-table")
    public DataTablesResponse<MandateDto> getFormTable(@RequestBody DataTableRequest param) throws Exception {
        return service.getFormTable(param);
    }

    @GetMapping("/images")
    public Iterable<Mandate> getAllActiveImages() {
        return service.findAllActiveImages();
    }

    @GetMapping("/details/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getNewses(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-mandate")
    public ResponseEntity<CommonResponse> deactivateForm(@RequestParam Integer id) throws Exception {
        service.deactivateForm(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-mandate")
    public ResponseEntity<CommonResponse> reactivateForm(@RequestParam Integer id) throws Exception {
        service.reactivateForm(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/save")
    @ResponseBody
    public Mandate upload(MultipartHttpServletRequest req) throws Exception {
        String name = req.getParameter("name");
        MultipartFile file = req.getFile("file");
        return service.save(name, file);
    }

    @PostMapping("/update")
    @ResponseBody
    public Mandate update(MultipartHttpServletRequest req) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        MultipartFile file = req.getFile("file");
        return service.update(id, name, file);
    }

    @GetMapping("/path/view/{name}")
    @ResponseBody
    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("intranet\\Forms\\" + name);

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
