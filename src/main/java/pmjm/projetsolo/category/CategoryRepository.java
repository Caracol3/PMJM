package pmjm.projetsolo.category;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pmjm.projetsolo.activity.ActivityEntity;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryEntity,Long> {
}
