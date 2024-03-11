/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import fintrex.intranet.dto.LoadEpfDTO;
import fintrex.intranet.model.Employee;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface EmployeeRepo extends CrudRepository<Employee, Integer> {

    @Query("SELECT x.`id`,x.`callname`,(SELECT d.`name` FROM `hris_new`.`department` d WHERE d.`id`=x.`department`) AS `department` FROM `hris_new`.`employee` x WHERE x.`epf`=:cid")
    Iterable<LoadEpfDTO> getEpf(@Param("cid") Integer cid);
}
