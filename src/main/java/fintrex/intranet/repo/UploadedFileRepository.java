/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import fintrex.intranet.model.Uploadedfile;

/**
 *
 * @author cpm.999cc
 */
@Repository
public interface UploadedFileRepository extends CrudRepository<Uploadedfile, Integer> {

}
