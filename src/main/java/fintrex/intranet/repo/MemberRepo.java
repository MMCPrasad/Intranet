/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.Members;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface MemberRepo extends CrudRepository<Members, Integer> {

//    Iterable<Members> findByStatus(String status);
    @Query("SELECT p.id,p.`subtype`,p.`name`,p.`path`,p.`designation` FROM `team_members` p JOIN `hris_new`.`employee` e ON p.`subtype`=e.`department` JOIN  `hris_new`.`user` u  ON u.`employee_id`=e.id WHERE u.id=:userId AND p.`status`='active' ")
    Iterable<Members> findByStatus(@Param("userId") Integer userId);
//    @Query("SELECT p.id, p.`subtype`, p.`name`, p.`path`, p.`designation` FROM `team_members` p JOIN `hris_new`.`employee` e ON p.`subtype` = e.`department` JOIN `hris_new`.`user` u ON u.`employee_id` = e.id WHERE u.id = :userId AND p.status = :status")
//    Iterable<Members> findByStatus(@Param("userId") Integer userId, @Param("status") String status);

}
