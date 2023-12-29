/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.NewsDto;
import fintrex.intranet.dto.SystemDto;
import fintrex.intranet.model.News;
import fintrex.intranet.model.NewsImages;
import fintrex.intranet.model.Systems;
import fintrex.intranet.repo.NewsImageRepo;
import fintrex.intranet.service.NewsService;
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
@RequestMapping("/news")
public class NewsController {

    @Autowired
    NewsService service;
    @Autowired
    NewsImageRepo services;

    @PostMapping("/newss")
    public DataTablesResponse<NewsDto> getNewss(@RequestBody DataTableRequest param) throws Exception {
        return service.getNewss(param);
    }

    @GetMapping("/{id}")
    public ResponseEntity<CommonResponse> getNews(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getNews(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @GetMapping("/images")
    public Iterable<News> getAllActiveImages() {
        return service.findAllActiveImages();
    }

//    @GetMapping("/update-news/{id}")
//    public News getNewses(@PathVariable Integer id) throws Exception {
//        return service.getNewses(id);
//    }
    @GetMapping("/details/{id}")
    public ResponseEntity<CommonResponse> details(@PathVariable Integer id) throws Exception {
        CommonResponse response = new CommonResponse("Success!", service.getNewses(id), 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/update-news")
    public ResponseEntity<CommonResponse> updateNews(@RequestParam Integer id, @RequestParam String heading, @RequestParam String para, @RequestParam String path) throws Exception {
        service.updateNews(id, heading, para, path);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/deactivate-news")
    public ResponseEntity<CommonResponse> deactivateNews(@RequestParam Integer id) throws Exception {
        service.deactivateNews(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/reactivate-news")
    public ResponseEntity<CommonResponse> reactivateNews(@RequestParam Integer id) throws Exception {
        service.reactivateNews(id);
        CommonResponse response = new CommonResponse("Success!", 200);
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @PostMapping("/save")
    @ResponseBody
    public News upload(MultipartHttpServletRequest req) throws Exception {
        String heading = req.getParameter("heading");
        String para = req.getParameter("para");
        List<MultipartFile> files = req.getFiles("file");
        return service.save(heading, para, files);
    }

    @PostMapping("/update")
    @ResponseBody
    public News update(MultipartHttpServletRequest req) throws Exception {
        Integer id = Integer.parseInt(req.getParameter("id"));
        String heading = req.getParameter("heading");
        String para = req.getParameter("para");
        List<MultipartFile> files = req.getFiles("file");
        return service.update(id, heading, para, files);
    }

    @GetMapping("/path/view/{name}")
    @ResponseBody
    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("intranet\\news\\" + name);

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

    @GetMapping("/path/newsss/{name}")
    @ResponseBody
    public void views(@PathVariable String name, HttpServletResponse resp) throws IOException {
        System.out.println("test");
        File file = new File("E:\\chirantha\\intranet\\news\\123\\" + name);

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
