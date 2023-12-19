/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.BirthdayEmpDto;
import fintrex.intranet.dto.BirthdayWishDto;
import fintrex.intranet.dto.GetPagesAccDTO;
import fintrex.intranet.dto.IdeaDataTable;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.service.BirthdayService;
import jakarta.servlet.http.HttpSession;
import java.util.Map;
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

/**
 *
 * @author cpm.999cc
 */
@RestController
@RequestMapping("/birthday")
public class BirthdayController {

    @Autowired
    BirthdayService service;

    @PostMapping("/dob")
    public DataTablesResponse<BirthdayEmpDto> getDobs(@RequestBody DataTableRequest param) throws Exception {
        return service.getDobs(param);

    }

    @PostMapping("/search-dob")
    public Iterable<SlimSelectDTO> getDob(@RequestParam String search) throws Exception {
        return service.getDob(search);
    }

    @PostMapping("/save-wish")
    public ResponseEntity<CommonResponse> saveWish(@RequestParam String birthday, @RequestParam String name, @RequestParam String wish) throws Exception {
        service.saveWish(birthday, name, wish);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/wishes")
    public DataTablesResponse<BirthdayWishDto> getWishes(@RequestBody DataTableRequest param) throws Exception {
        return service.getWishes(param);
    }

//    @PostMapping("/wishess")
//    public DataTablesResponse<BirthdayWishDto> getWishess(@RequestBody DataTableRequest param) throws Exception {
//        return service.getWishess(param);
//    }
//    @PostMapping("/wishes")
//    public Iterable<BirthdayWishDto> getWishesByBirthday(@RequestBody Map<String, String> requestData) {
//        String callName = requestData.get("data");
//        return service.getWishesByBirthday(callName);
//    }
    @PostMapping("/wishess")
    public ResponseEntity<Iterable<BirthdayWishDto>> getWishesByBirthday(@RequestBody Map<String, String> requestData, HttpSession session) {
        String callName = requestData.get("data");

        if (callName != null && !callName.isEmpty()) {
            Iterable<BirthdayWishDto> wishes = service.getWishesByBirthday(callName);
            return ResponseEntity.ok(wishes);
        } else {
            // Handle invalid or missing data
            return ResponseEntity.badRequest().build();
        }
    }

    @GetMapping("/details/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getWish(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-wish")
    public ResponseEntity<CommonResponse> deactivateWish(@RequestParam Integer id) throws Exception {
        service.deactivateWish(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-wish")
    public ResponseEntity<CommonResponse> reactivateWish(@RequestParam Integer id) throws Exception {
        service.reactivateWish(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}
