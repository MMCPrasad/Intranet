/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import fintrex.intranet.dto.SlimSelectDTO;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import fintrex.intranet.model.PolicyType;

/**
 *
 * @author L580
 */
@Repository
public interface PolicyTypeRepo extends CrudRepository<PolicyType, Integer> {

    @Query("SELECT `id` AS `value`, `type` AS `text` FROM `policy_type`")
    Iterable<SlimSelectDTO> getType(@Param("search") String search);

}
