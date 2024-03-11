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
import fintrex.intranet.model.DirectorRole;

/**
 *
 * @author L580
 */
@Repository
public interface DirectorRoleRepo extends CrudRepository<DirectorRole, Integer> {

    @Query("SELECT `id` AS `value`, `director_role` AS `text` FROM `director_role`")
    Iterable<SlimSelectDTO> getRole(@Param("search") String search);

}
