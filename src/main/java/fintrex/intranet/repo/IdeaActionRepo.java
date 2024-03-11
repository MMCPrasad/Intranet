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
import fintrex.intranet.model.IdeaAction;

/**
 *
 * @author L580
 */
@Repository
public interface IdeaActionRepo extends CrudRepository<IdeaAction, Integer> {

    @Query("SELECT `id` AS `value`, `action` AS `text` FROM `idea_action`")
    Iterable<SlimSelectDTO> getAction(@Param("search") String search);

    @Query("SELECT `id` AS `value`, `name` AS `text` FROM `users` WHERE `usertype` = '1'")
    Iterable<SlimSelectDTO> geRes(@Param("search") String search);

}
