/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import fintrex.intranet.dto.BirthdayWishDto;
import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.Birthday;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface BirthdayRepo extends CrudRepository<Birthday, Integer> {

    @Query("SELECT b.`id` AS `value`, b.`name` AS `text` FROM `branches` b ")
    Iterable<SlimSelectDTO> getDob(@Param("search") String search);

}
