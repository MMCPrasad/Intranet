/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.Department;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface DepartmentRepo extends CrudRepository<Department, Integer> {

    @Query("SELECT e.`department`,(SELECT `name` FROM `hris_new`.`department` WHERE `id` = e.`department`) AS `text`,e.`department` AS `value` FROM `hris_new`.`employee` e WHERE e.`status` LIKE '%active' AND `branch`='3' GROUP BY e.`department`")
    Iterable<SlimSelectDTO> getDepartment(@Param("search") String search);

}
