/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.AnnouncementDataTable;
import fintrex.intranet.dto.FDDto;
import fintrex.intranet.model.Fd;
import fintrex.intranet.service.FdService;
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
@RequestMapping("/fd")
public class FDController {

    @Autowired
    FdService service;

    @PostMapping("/fds")
    public DataTablesResponse<FDDto> getFds(@RequestBody DataTableRequest param) throws Exception {
        return service.getFds(param);
    }

    @PostMapping("/fd-table")
    public DataTablesResponse<FDDto> getFdTable(@RequestBody DataTableRequest param) throws Exception {
        return service.getFdTable(param);
    }

    @GetMapping("/images")
    public Iterable<Fd> getAllActiveImages() {
        return service.findAllActiveImages();
    }

    @GetMapping("/details/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getNewses(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-fd")
    public ResponseEntity<CommonResponse> deactivateFd(@RequestParam Integer id) throws Exception {
        service.deactivateFd(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-fd")
    public ResponseEntity<CommonResponse> reactivateFd(@RequestParam Integer id) throws Exception {
        service.reactivateFd(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/save")
    @ResponseBody
    public Fd upload(MultipartHttpServletRequest req) throws Exception {
        String name = req.getParameter("name");
        MultipartFile file = req.getFile("file");
        return service.save(name, file);
    }

    @PostMapping("/update")
    @ResponseBody
    public Fd update(MultipartHttpServletRequest req) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        MultipartFile file = req.getFile("file");
        return service.update(id, name, file);
    }

    @GetMapping("/path/view/{name}")
    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("intranet\\Fds\\" + name);

        if (!file.exists()) {
            resp.sendError(404, "file not found");
            return;
        }

        // Set content type
        resp.setContentType("application/pdf");

        // Set content disposition to inline
        resp.setHeader("Content-Disposition", "inline; filename=" + name);

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

//    @GetMapping("/path/view/{name}")
//    @ResponseBody
//    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {
//
//        File file = new File("intranet\\Fds\\" + name);
//
//        if (!file.exists()) {
//            resp.sendError(404, "file not found");
//            return;
//        }
//
//        OutputStream out = resp.getOutputStream();
//        FileInputStream in = new FileInputStream(file);
//        byte[] buffer = new byte[4096];
//        int length;
//        while ((length = in.read(buffer)) > 0) {
//            out.write(buffer, 0, length);
//        }
//        in.close();
//        out.flush();
//
//    }
}
