/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.NoticeDataTable;
import fintrex.intranet.model.Notice;

import fintrex.intranet.service.NoticeService;
import java.sql.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/notice")
public class NoticeController {

    @Autowired
    NoticeService service;

    @PostMapping("/save-notice")
    public ResponseEntity<CommonResponse> saveNotice(@RequestParam String heading, @RequestParam String para) throws Exception {
        service.saveNotice(heading, para);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/notices")
    public DataTablesResponse<NoticeDataTable> getNotices(@RequestBody DataTableRequest param) throws Exception {
        return service.getNotices(param);
    }

    @GetMapping("/update-notice/{id}")
    public Notice getUser(@PathVariable Integer id) throws Exception {
        return service.getNotice(id);
    }

    @PostMapping("/update-notice")
    public ResponseEntity<CommonResponse> updateNotice(@RequestParam Integer id, @RequestParam String heading, @RequestParam(name = "para") String param) throws Exception {
        service.updateNotice(id, heading, param);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-notice")
    public ResponseEntity<CommonResponse> deactivateNotice(@RequestParam Integer id) throws Exception {
        service.deactivateNotice(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-notice")
    public ResponseEntity<CommonResponse> reactivateNotice(@RequestParam Integer id) throws Exception {
        service.reactivateNotice(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

}
