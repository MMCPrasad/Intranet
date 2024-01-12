/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.GetPagesAccDTO;
import fintrex.intranet.dto.GetPagesDTO;
import fintrex.intranet.dto.GetPagesPolicyAccDTO;
import fintrex.intranet.dto.PolicyDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.dto.UserDataTable;
import fintrex.intranet.dto.UserTypeDataTable;
import fintrex.intranet.model.Policy;
import fintrex.intranet.model.User;
import fintrex.intranet.model.UserPolicy;
import fintrex.intranet.service.PolicyService;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
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
@RequestMapping("/policy")
public class PolicyController {

    @Autowired
    PolicyService service;

    @PostMapping("/policies")
    public DataTablesResponse<PolicyDto> getPolicies(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
        return service.getPolicies(param, (Integer) session.getAttribute("uid"));
    }

    @PostMapping("/manuals")
    public DataTablesResponse<PolicyDto> getMannual(@RequestBody DataTableRequest param) throws Exception {
        return service.getMannual(param);
    }

    @PostMapping("/department")
    public DataTablesResponse<PolicyDto> getDepartment(@RequestBody DataTableRequest param, HttpSession session) throws Exception {
        return service.getDepartment(param, (Integer) session.getAttribute("uid"));
    }

    @PostMapping("/generel-policy")
    public DataTablesResponse<PolicyDto> getgenPol(@RequestBody DataTableRequest param) throws Exception {
        return service.getgenPol(param);
    }

    @PostMapping("/generel-procedure")
    public DataTablesResponse<PolicyDto> getgenPro(@RequestBody DataTableRequest param) throws Exception {
        return service.getgenPro(param);
    }

    @PostMapping("/search-manual")
    public Iterable<SlimSelectDTO> getManual(@RequestParam String search) throws Exception {
        return service.getManual(search);
    }

    @GetMapping("/details/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getPolicy(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/search-deppolicy")
    public Iterable<SlimSelectDTO> getDep(@RequestParam String search) throws Exception {
        return service.getDep(search);
    }

    @PostMapping("/search-deppolicies")
    public Iterable<SlimSelectDTO> getDeps(@RequestParam String search) throws Exception {
        return service.getDeps(search);
    }

    @RequestMapping("/page-access")
    public Iterable<GetPagesPolicyAccDTO> getPageAccess(HttpSession session) throws Exception {
        return service.getPageAccess((Integer) session.getAttribute("uid"));
    }

    @PostMapping("/search-type")
    public Iterable<SlimSelectDTO> getType(@RequestParam String search) throws Exception {
        return service.getType(search);
    }

    @GetMapping("/images")
    public Iterable<Policy> getAllImages() {
        return service.findAll();

    }

    @GetMapping("/update-policy/{id}")
    public Policy getPolicy(@PathVariable Integer id) throws Exception {
        return service.getPolicy(id);
    }

    @PostMapping("/update-policy")
    public ResponseEntity<CommonResponse> updatePolicy(@RequestParam Integer id, @RequestParam String name, @RequestParam String path) throws Exception {
        service.updatePolicy(id, name, path);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-policy")
    public ResponseEntity<CommonResponse> deactivatePolicy(@RequestParam Integer id) throws Exception {
        service.deactivatePolicy(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-policy")
    public ResponseEntity<CommonResponse> reactivatePolicy(@RequestParam Integer id) throws Exception {
        service.reactivatePolicy(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/save")
    @ResponseBody
    public Policy upload(MultipartHttpServletRequest req, HttpSession session) throws Exception {
        String name = req.getParameter("name");
        String type = req.getParameter("type");

        MultipartFile file = req.getFile("file");
        return service.save(name, type, session, file);
    }

    @PostMapping("/update")
    @ResponseBody
    public Policy update(MultipartHttpServletRequest req, HttpSession session) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String type = req.getParameter("type");

        MultipartFile file = req.getFile("file");
        return service.update(id, name, type, session, file);
    }

    @GetMapping("/path/view/{name}")
    @ResponseBody
    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("intranet\\Polices\\" + name);

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

    @PostMapping("/users")
    public DataTablesResponse<UserDataTable> getUsers(@RequestBody DataTableRequest param) throws Exception {
        return service.getUsers(param);
    }

    @PostMapping("/userType")
    public DataTablesResponse<UserTypeDataTable> getUserType(@RequestBody DataTableRequest param) throws Exception {
        return service.getUserType(param);
    }

    @GetMapping("/user/{id}")
    public UserPolicy getUser(@PathVariable Integer id) throws Exception {
        return service.getUser(id);
    }

    @PostMapping("/user-type-save")
    public ResponseEntity<CommonResponse> saveUserType(@RequestParam String name, @RequestParam String pages) throws Exception {
        service.saveUserType(name, pages);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/user-type-update")
    public ResponseEntity<CommonResponse> updateUserType(@RequestParam Integer id, @RequestParam String name, @RequestParam String pages) throws Exception {
        service.updateUserType(id, name, pages);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/save-user")
    public ResponseEntity<CommonResponse> saveUser(@RequestParam String username, @RequestParam String name, @RequestParam Integer userType) throws Exception {
        service.saveUser(name, username, userType);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/update-user")
    public ResponseEntity<CommonResponse> saveUser(@RequestParam Integer id, @RequestParam String username, @RequestParam String name, @RequestParam Integer userType) throws Exception {
        service.updateUser(id, name, username, userType);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-user")
    public ResponseEntity<CommonResponse> deactivateUser(@RequestParam Integer id) throws Exception {
        service.deactivateUser(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-user")
    public ResponseEntity<CommonResponse> reactivateUser(@RequestParam Integer id) throws Exception {
        service.reactivateUser(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-user-Type")
    public ResponseEntity<CommonResponse> deactivateUserType(@RequestParam Integer id) throws Exception {
        service.deactivateUserType(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-user-Type")
    public ResponseEntity<CommonResponse> reactivateUserType(@RequestParam Integer id) throws Exception {
        service.reactivateUserType(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/getpages")
    public GetPagesDTO getPage() throws Exception {

        return service.getPage();
    }

    @PostMapping("/get-userType")
    public GetPagesDTO getUserType(@RequestParam Integer id) throws Exception {
        return service.getSelectedPage(id);
    }

    @PostMapping("/search-user-types")
    public Iterable<SlimSelectDTO> searchUserTypes(@RequestParam String search) throws Exception {
        return service.getUserTypeIdAndName(search);
    }

}
