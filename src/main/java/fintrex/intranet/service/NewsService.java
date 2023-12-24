/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.NewsDto;
import fintrex.intranet.dto.NewsDto2;
import fintrex.intranet.dto.SystemDto;
import fintrex.intranet.model.News;
import fintrex.intranet.model.NewsImages;
import fintrex.intranet.repo.SystemRepo;
import fintrex.intranet.repo.NewsImageRepo;
import fintrex.intranet.model.Systems;
import fintrex.intranet.repo.NewsRepo;
import java.io.File;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import static org.springframework.web.servlet.function.RequestPredicates.path;

/**
 *
 * @author L580
 */
@Service
public class NewsService {

    @Autowired
    private DataTableRepo<NewsDto> userDt;
    @Autowired
    private NewsRepo repo;
    @Autowired
    private NewsImageRepo nerepo;

    public DataTablesResponse<NewsDto> getNewss(DataTableRequest param) throws Exception {
        return userDt.getData(NewsDto.class, param, "SELECT x.`id`,x.`heading`,x.`status`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`ent_by`) AS `ent_by`,`ent_on` FROM `news` X WHERE TRUE");

    }

    public News updateNews(Integer id, String heading, String para, String path) throws Exception {
        News user = repo.findById(id).get();
        user.setHeading(heading);
        user.setPara(para);
//        user.setPath(path);
        user = repo.save(user);
        return user;
    }

    public News getNewses(Integer id) throws Exception {
        News sys = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return sys;
    }

    public NewsDto2 getNews(Integer id) throws Exception {
        News nws = repo.findById(id).get();
        Iterable<NewsImages> newsImages = nerepo.findByNews(id);

        NewsDto2 dto = new NewsDto2();
        dto.setPara(nws.getPara());
//        dto.setPath(nws.getPath());
        dto.setImages(newsImages);
        dto.setHeading(nws.getHeading());

        return dto;
    }

    public News deactivateNews(Integer id) throws Exception {
        News syst = repo.findById(id).get();
        syst.setStatus("deactivate");
        syst = repo.save(syst);
        return syst;
    }

    public News reactivateNews(Integer id) throws Exception {
        News systems = repo.findById(id).get();
        systems.setStatus("active");
        systems = repo.save(systems);
        return systems;
    }

    public NewsImages saveNewsImage(Integer news, String path) {
        NewsImages imgs = new NewsImages();
        imgs.setNews(news);
        imgs.setPath(path);

        return nerepo.save(imgs);
    }

    public Iterable<News> findAllActiveImages() {
        return repo.findByStatus("active");
    }

    public News save(String heading, String para, List<MultipartFile> files) throws Exception {
        News system = new News();
        system.setHeading(heading);
        system.setPara(para);
        system.setStatus("active");
        system = repo.save(system);
        if (files != null) {
            for (MultipartFile file : files) {
                NewsImages newsImage = new NewsImages();
                newsImage.setNews(system.getId());
                newsImage = nerepo.save(newsImage);
                String[] split = file.getOriginalFilename().split("\\.");
                File des = new File("E:\\chirantha\\intranet\\news\\123\\" + system.getId() + "_" + (newsImage.getId()) + "." + split[split.length - 1]);
                file.transferTo(des);
                newsImage.setPath(des.getName());
                nerepo.save(newsImage);

            }

        }
        return repo.save(system);
    }

    public News update(Integer id, String heading, String para, List<MultipartFile> files) throws Exception {
        News system = repo.findById(id).get();
        system.setHeading(heading);
        system.setPara(para);
        if (files != null) {
            nerepo.deleteAll(nerepo.findByNews(id));
            for (MultipartFile file : files) {
                NewsImages newsImage = new NewsImages();
                newsImage.setNews(system.getId());
                newsImage = nerepo.save(newsImage);
                String[] split = file.getOriginalFilename().split("\\.");
                File des = new File("E:\\chirantha\\intranet\\news\\123\\" + id + "_" + newsImage.getId() + "." + split[split.length - 1]);
                file.transferTo(des);
                newsImage.setPath(des.getName());
                nerepo.save(newsImage);

            }

        }
        return repo.save(system);
    }
}
