package fintrex.intranet.repo;

import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.UserType;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserTypeRepo extends CrudRepository<UserType, Integer> {

    @Query("SELECT `id` as `value`,`name` as `text` from `user_type`")
    Iterable<SlimSelectDTO> getIdAndName(@Param("search") String search);

}
