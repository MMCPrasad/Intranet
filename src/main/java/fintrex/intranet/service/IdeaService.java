/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.service;

import fintrex.intranet.datatable.DataTableRepo;
import fintrex.intranet.datatable.DataTableRequest;
import fintrex.intranet.datatable.DataTablesResponse;
import fintrex.intranet.dto.IdeaDataTable;
import fintrex.intranet.dto.IdeaReviewDataTable;
import fintrex.intranet.dto.LoadEpfDTO;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.Ideas;
import fintrex.intranet.model.Employee;
import fintrex.intranet.repo.EmployeeRepo;
import fintrex.intranet.repo.IdeaActionRepo;
import fintrex.intranet.repo.IdeaRepo;
import fintrex.intranet.repo.IdeaResultRepo;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.core.mapping.AggregateReference;
import org.springframework.stereotype.Service;

/**
 *
 * @author L580
 */
@Service
public class IdeaService {

    @Autowired
    private DataTableRepo<IdeaDataTable> userDt;
    @Autowired
    private DataTableRepo<IdeaReviewDataTable> idea;
    @Autowired
    private IdeaRepo repo;
    @Autowired
    private IdeaResultRepo repor;
    @Autowired
    private IdeaActionRepo repr;
    @Autowired
    private EmployeeRepo reporx;

    public Iterable<SlimSelectDTO> getResult(String search) {
        return repor.getResult("%" + search.trim() + "%");
    }

    public Iterable<SlimSelectDTO> getAction(String search) {
        return repr.getAction("%" + search.trim() + "%");
    }

    public Iterable<SlimSelectDTO> geRes(String search) {
        return repr.geRes("%" + search.trim() + "%");
    }

    public Ideas saveIdea(String epf, String employee, String department, String idea, String result) {

        Ideas notice = new Ideas();
        notice.setEpf(epf);
        notice.setEmployee(employee);
        notice.setDepartment(department);
        notice.setIdea(idea);
        notice.setResult(result);
        notice = repo.save(notice);

        return notice;
    }

    public DataTablesResponse<IdeaDataTable> getIdea(DataTableRequest param) throws Exception {
        return userDt.getData(IdeaDataTable.class, param, "SELECT x.`id`,x.`epf`,x.`employee`,x.`idea`,(SELECT d.`result` FROM `idea_result` d WHERE d.`id`=x.`result`) AS`result`,x.`department`,x.`input_date`,(SELECT d.`action` FROM `idea_action` d WHERE d.`id`=x.`last_action`)AS`last_action`,x.`comment`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`responsibility`) AS `responsibility`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,x.`last_mod_date` FROM `ideas` X");

    }

    public DataTablesResponse<IdeaDataTable> getIdeas(DataTableRequest param) throws Exception {
        String data = param.getData();
        return userDt.getData(IdeaDataTable.class, param, "SELECT x.`id`,x.`epf`,x.`employee`,x.`idea`,(SELECT d.`result` FROM `idea_result` d WHERE d.`id`=x.`result`) AS`result`,x.`department`,x.`input_date`,(SELECT d.`action` FROM `idea_action` d WHERE d.`id`=x.`last_action`)AS`last_action`,x.`comment`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`responsibility`) AS `responsibility`,(SELECT d.`name` FROM `users` d WHERE d.`id`=x.`mod_by`) AS `mod_by`,x.`last_mod_date` FROM `ideas` X WHERE `id` = " + data + "");

    }

    public Ideas updateIdea(Integer id, String lastAction, String comment, String responsibility) throws Exception {
        Ideas user = repo.findById(id).get();
        user.setLastAction(lastAction);
        user.setComment(comment);
        user.setResponsibility(responsibility);
        user = repo.save(user);
        return user;
    }

    public Ideas getIdeasup(Integer id) throws Exception {
        Ideas not = repo.findById(id).get();
        //Ideas not = repo.findById(id).get();
        return not;
    }

    public Iterable<LoadEpfDTO> getEpf(Integer epf) {
        return reporx.getEpf(epf);
    }
}
