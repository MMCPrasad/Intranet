/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.DepPolicy;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author L580
 */
@Repository
public interface PolDepRepo extends CrudRepository<DepPolicy, Integer> {

    @Query("SELECT `id` AS `value`, `name` AS `text` FROM `dep_policy`")
    Iterable<SlimSelectDTO> getDep(@Param("search") String search);

    @Query("SELECT `id` AS `value`, `name` AS `text` FROM `pages_policy`")
    Iterable<SlimSelectDTO> getDeps(@Param("search") String search);

}
