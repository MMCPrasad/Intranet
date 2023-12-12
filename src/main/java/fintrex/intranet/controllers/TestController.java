/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.controllers;

import fintrex.intranet.model.Images;
import fintrex.intranet.service.ImagesService;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

/**
 *
 * @author Neva
 */
@Controller
public class TestController {

    @GetMapping("/test")
    public String test() {
        return "test";
    }

    @GetMapping("/test/all")
    @ResponseBody
    public Iterable<Images> allImages() {
        return service.findAll();
    }

    @PostMapping("/test/upload")
    @ResponseBody
    public String upload(MultipartHttpServletRequest req) throws IOException {

        String txt = req.getParameter("txt");
        MultiValueMap<String, MultipartFile> multiFileMap = req.getMultiFileMap();

        //Map<String, MultipartFile> fileMap = req.getFileMap();
        for (Map.Entry<String, List<MultipartFile>> entry : multiFileMap.entrySet()) {
            Object key = entry.getKey();
            List<MultipartFile> val = (List<MultipartFile>) entry.getValue();

            for (int i = 0; i < val.size(); i++) {
                Images savedImage = service.save(null);
                String[] split = val.get(i).getOriginalFilename().split("\\.");
                File des = new File("E:\\chirantha\\images\\" + savedImage.getId() + "." + split[split.length - 1]);
                System.out.println(des.getName());
                val.get(i).transferTo(des);
                service.update(savedImage.getId(), des.getName());
            }

        }

        return "ok";
    }
    @Autowired
    ImagesService service;

//    @PostMapping("/test/upload")
//    @ResponseBody
//    public String upload(MultipartHttpServletRequest req) throws IOException {
//
//        Map<String, MultipartFile> fileMap = req.getFileMap();
//        for (Map.Entry<String, MultipartFile> entry : fileMap.entrySet()) {
//            String key = entry.getKey();
//            MultipartFile file = entry.getValue();
//
//            Images savedImage = service.save(null);
//            String[] split = file.getOriginalFilename().split("\\.");
//
//            File des = new File("E:\\chirantha\\images\\" + savedImage.getId() + "." + split[split.length - 1]);
//            System.out.println(des.getName());
//            file.transferTo(des);
//
//            service.update(savedImage.getId(), des.getName());
//
//        }
//
//        return "ok";
//    }
    @GetMapping("/test/view/{name}")
    @ResponseBody
    public void view(@PathVariable String name, HttpServletResponse resp) throws IOException {

        File file = new File("E:\\chirantha\\images\\" + name);

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

    //this load file  
    @GetMapping("/loadCustomer")
    @ResponseBody
    public void loadCustomerImage(@RequestParam String file, HttpServletResponse resp) {
        try {

//            File f = new File("C:\\Program Files\\Apache Software Foundation\\Tomcat 10.1\\webapps\\CCMPortal\\ROOT\\assets\\img\\abc\\customers\\" + file);
            File f = new File("E:\\chirantha\\images\\" + file);
            if (!f.exists()) {

                resp.sendError(404, "not found");
            }

            OutputStream out = resp.getOutputStream();
            FileInputStream in = new FileInputStream(f);
            byte[] buffer = new byte[4096];
            int length;
            while ((length = in.read(buffer)) > 0) {
                out.write(buffer, 0, length);
            }
            in.close();
            out.flush();

        } catch (Exception e) {
            e.printStackTrace();

        }

    }
}
