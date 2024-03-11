/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import fintrex.intranet.dto.GetPagesAccDTO;
import fintrex.intranet.dto.GetPagesDTO;
import fintrex.intranet.dto.GetPagesPolicyAccDTO;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import fintrex.intranet.model.PagePolicy;

/**
 *
 * @author asus
 */
@Repository
public interface PagePolicyRepo extends CrudRepository<PagePolicy, Integer> {

    @Query("WITH RECURSIVE pgs AS (SELECT j.page FROM `user_type` ut CROSS JOIN JSON_TABLE(ut.`pages`, '$[*]' COLUMNS (`page` INT PATH '$[0]'))j  WHERE ut.`id`= (SELECT `user_type` FROM `user` WHERE `id`=:uid)), p AS (SELECT `id`,`parent` FROM `pages` WHERE id IN (SELECT page FROM pgs) UNION SELECT pp.`id`,pp.`parent` FROM `pages` pp JOIN p ON pp.`id`=p.parent) "
            + "SELECT JSON_ARRAYAGG(JSON_OBJECT('name',`name`,'url',`url`,'icon',IFNULL(`icon`,''),'odr',IFNULL(`odr`,10000),'pages',(SELECT JSON_ARRAYAGG(JSON_OBJECT('name',`name`,'url',`url`,'icon',`icon`,'odr',IFNULL(`odr`,10000),'pages',(SELECT JSON_ARRAYAGG(JSON_OBJECT('name',`name`,'url',`url`,'icon',`icon`,'odr',IFNULL(`odr`,10000))) FROM `pages` l3 WHERE `level`=3 AND `parent`=l2.id AND l3.`status`='active' AND l3.`id` IN (SELECT id FROM p)))) FROM `pages` l2 WHERE `level`=2 AND `parent`=l1.`id` AND l2.`status`='active' AND l2.`id` IN (SELECT id FROM p)))) AS pages FROM `pages` l1 WHERE `level`=1 AND `status`='active' AND l1.`id` IN (SELECT id FROM p)")
    String getAllPages(@Param("uid") String uid);

    @Query("SELECT (SELECT JSON_ARRAYAGG(JSON_OBJECT( 'odr',`odr`,'id',`id`,'parent',`parent`,'name',`name`,'level',`level`,'url',`url`)) FROM `pages_policy`)as `all_page`")
    GetPagesDTO getPage();

    @Query("SELECT pid AS id, pid AS VALUE, p.name AS TEXT FROM `user_type_policy` t CROSS JOIN JSON_TABLE(t.pages, '$[*]' COLUMNS (`pid` INT PATH '$[0]')) j JOIN pages_policy p ON j.pid = p.id WHERE t.id = (SELECT `usertype` FROM `users_policy` WHERE `id` =:uid)")
    Iterable<GetPagesPolicyAccDTO> getPageAccess(@Param("uid") Integer uid);

    @Query("SELECT `id`,`name`,(SELECT JSON_ARRAYAGG(JSON_OBJECT( 'odr',`odr`,'id',`id`,'parent',`parent`,'name',`name`,'level',`level`,'url',`url`,'state',JSON_OBJECT('selected',IF(a.access IS NULL,CAST(FALSE AS JSON),CAST(TRUE AS JSON))))) FROM `pages_policy` p LEFT JOIN (SELECT j.* FROM `user_type_policy` t CROSS JOIN JSON_TABLE(t.`pages`,'$[*]' COLUMNS(`access` INT PATH '$[0]'))j WHERE t.`id`=:utid)a ON p.id=a.access)AS `all_page`  FROM `user_type_policy` u WHERE id =:utid")
    GetPagesDTO getSelectedPage(@Param("utid") Integer utid);
}
