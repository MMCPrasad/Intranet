/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AnnouncementDataTable;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.dto.StatementDTO;
import fintrex.intranet.dto.SystemDto;
import fintrex.intranet.model.Statement;
import fintrex.intranet.model.Annoucement;

import fintrex.intranet.service.AnnouncementService;
import fintrex.intranet.service.StatementService;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
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
@RequestMapping("/statement")
public class StatementController {

    @Autowired
    StatementService service;

    @PostMapping("/statements")
    public DataTablesResponse<StatementDTO> getStatements(@RequestBody DataTableRequest param) throws Exception {
        return service.getStatements(param);
    }

    @PostMapping("/search-type")
    public Iterable<SlimSelectDTO> getType(@RequestParam String search) throws Exception {
        return service.getType(search);
    }

    @PostMapping("/annual")
    public DataTablesResponse<StatementDTO> getAnnual(@RequestBody DataTableRequest param) throws Exception {
        return service.getAnnual(param);
    }

    @PostMapping("/bi-annaual")
    public DataTablesResponse<StatementDTO> getBiAnnual(@RequestBody DataTableRequest param) throws Exception {
        return service.getBiAnnual(param);
    }

    @GetMapping("/images")
    public Iterable<Statement> getAllActiveImages() {
        return service.findAllActiveImages();
    }

    @GetMapping("/details/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getStatementses(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/update-statement")
    public ResponseEntity<CommonResponse> updateStatements(@RequestParam Integer id, @RequestParam String name, @RequestParam String date, @RequestParam String path) throws Exception {
        service.updateStatements(id, name, date, path);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-statement")
    public ResponseEntity<CommonResponse> deactivateStatements(@RequestParam Integer id) throws Exception {
        service.deactivateStatements(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-statement")
    public ResponseEntity<CommonResponse> reactivateStatements(@RequestParam Integer id) throws Exception {
        service.reactivateStatements(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/save")
    @ResponseBody
    public Statement upload(MultipartHttpServletRequest req) throws Exception {
        String name = req.getParameter("name");
        String type = req.getParameter("type");
        MultipartFile file = req.getFile("file");
        return service.save(name, type, file);
    }

    @PostMapping("/update")
    @ResponseBody
    public Statement update(MultipartHttpServletRequest req) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String type = req.getParameter("type");
        MultipartFile file = req.getFile("file");
        return service.update(id, name, type, file);
    }

    @GetMapping("/path/view/{name}")
    @ResponseBody
    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("intranet\\Statements\\" + name);

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
