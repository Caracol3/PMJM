package pmjm.projetsolo.activity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ActivityRepository extends JpaRepository<ActivityEntity,Long> {
    List<ActivityEntity> findByCategoryId(Long categoryId);

    List<ActivityEntity> findByRecommendedAge(Integer recommendedAge);
}
