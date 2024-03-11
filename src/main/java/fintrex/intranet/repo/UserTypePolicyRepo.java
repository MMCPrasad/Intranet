package fintrex.intranet.repo;

import fintrex.intranet.dto.SlimSelectDTO;
import fintrex.intranet.model.UserTypePolicy;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserTypePolicyRepo extends CrudRepository<UserTypePolicy, Integer> {

    @Query("SELECT `id` as `value`,`name` as `text` from `user_type_policy`")
    Iterable<SlimSelectDTO> getIdAndName(@Param("search") String search);

}
