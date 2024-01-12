/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import fintrex.intranet.model.AboutUs;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface AboutUsRepo extends CrudRepository<AboutUs, Integer> {

    @Query("SELECT p.id,(SELECT `name` FROM `hris_new`.`department` WHERE `id` = p.`subtype`) as `subtype`,p.`about_us`,p.`path` FROM `department` p JOIN `hris_new`.`employee` e ON p.`subtype`=e.`department` JOIN  `hris_new`.`user` u  ON u.`employee_id`=e.id WHERE u.id=:userId")
    Iterable<AboutUs> findByStatus(@Param("userId") Integer userId);
}
