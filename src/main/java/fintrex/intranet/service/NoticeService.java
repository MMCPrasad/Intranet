/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.NoticeDataTable;
import fintrex.intranet.repo.NoticeRepo;
import fintrex.intranet.model.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.core.mapping.AggregateReference;
import org.springframework.stereotype.Service;

/**
 *
 * @author L580
 */
@Service
public class NoticeService {

    @Autowired
    private DataTableRepo<NoticeDataTable> userDt;
    @Autowired
    private NoticeRepo repo;

    public Notice saveNotice(String heading, String para) {

        Notice notice = new Notice();
        notice.setHeading(heading);
        notice.setPara(para);
        notice.setStatus("active");
        notice = repo.save(notice);

        return notice;
    }

    public DataTablesResponse<NoticeDataTable> getNotices(DataTableRequest param) throws Exception {
        return userDt.getData(NoticeDataTable.class, param, "SELECT `id`,`heading`,`status` FROM `notice` WHERE TRUE");

    }

    public Notice updateNotice(Integer id, String heading, String param) throws Exception {
        Notice user = repo.findById(id).get();
        user.setHeading(heading);
        user.setPara(param);
        user = repo.save(user);
        return user;
    }

    public Notice getNotice(Integer id) throws Exception {
        Notice not = repo.findById(id).get();
//        UserType utype = userTypeRepo.findById(user.getUserType().getId()).get();
//        user.setUserTypeName(utype.getName());
        return not;
    }

    public Notice deactivateNotice(Integer id) throws Exception {
        Notice notic = repo.findById(id).get();
        notic.setStatus("deactivate");
        notic = repo.save(notic);
        return notic;
    }

    public Notice reactivateNotice(Integer id) throws Exception {
        Notice notices = repo.findById(id).get();
        notices.setStatus("active");
        notices = repo.save(notices);
        return notices;
    }
}
