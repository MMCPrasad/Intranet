/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.IdeaDataTable;
import fintrex.intranet.dto.IdeaReviewDataTable;
import fintrex.intranet.dto.LoadEpfDTO;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.service.IdeaService;

import fintrex.intranet.model.Ideas;
import fintrex.intranet.model.Employee;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@RestController
@RequestMapping("/idea")
public class IdeaController {

    @Autowired
    IdeaService service;

    @PostMapping("/search-result")
    public Iterable<SlimSelectDTO> getResult(@RequestParam String search) throws Exception {
        return service.getResult(search);
    }

    @PostMapping("/search-action")
    public Iterable<SlimSelectDTO> getAction(@RequestParam String search) throws Exception {
        return service.getAction(search);
    }

    @PostMapping("/search-res")
    public Iterable<SlimSelectDTO> geRes(@RequestParam String search) throws Exception {
        return service.geRes(search);
    }

    @PostMapping("/save-idea")
    public ResponseEntity<CommonResponse> saveIdea(@RequestParam String epf, @RequestParam String employee, @RequestParam String department, @RequestParam String idea, @RequestParam String result) throws Exception {
        service.saveIdea(epf, employee, department, idea, result);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/ideas")
    public DataTablesResponse<IdeaDataTable> getIdea(@RequestBody DataTableRequest param) throws Exception {
        return service.getIdea(param);
    }

    @PostMapping("/ideass")
    public DataTablesResponse<IdeaDataTable> getIdeas(@RequestBody DataTableRequest param) throws Exception {
        return service.getIdeas(param);
    }

    @GetMapping("/update-idea/{id}")
    public Ideas getIdeaup(@PathVariable Integer id) throws Exception {
        return service.getIdeasup(id);
    }

    @PostMapping("/get-epf")
    public Iterable<LoadEpfDTO> getEpf(@RequestParam Integer epf) throws Exception {
        return service.getEpf(epf);
    }

    @PostMapping("/update-idea")
    public ResponseEntity<CommonResponse> updateIdea(@RequestParam Integer id, @RequestParam String lastAction, @RequestParam String comment, @RequestParam String responsibility) throws Exception {
        service.updateIdea(id, lastAction, comment, responsibility);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}
