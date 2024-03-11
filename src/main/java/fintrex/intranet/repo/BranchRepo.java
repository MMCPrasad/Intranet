/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.Branch;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface BranchRepo extends CrudRepository<Branch, Integer> {

    @Query("SELECT e.`branch`,(SELECT `name` FROM `hris_new`.`branch` WHERE `id` = e.`branch`) AS `text`,e.`branch` AS `value` FROM `hris_new`.`employee` e WHERE e.`status` LIKE '%active' GROUP BY e.`branch`;")
    Iterable<SlimSelectDTO> getBranch(@Param("search") String search);

    @Query("SELECT b.`id` AS `value`, b.`name` AS `text` FROM `branches` b ")
    Iterable<SlimSelectDTO> getBranches(@Param("search") String search);

}
