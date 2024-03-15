/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import fintrex.intranet.model.Mandate;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface MandateRepo extends CrudRepository<Mandate, Integer> {

    Iterable<Mandate> findByStatus(String status);
}
