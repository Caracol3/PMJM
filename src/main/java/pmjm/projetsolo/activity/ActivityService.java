package pmjm.projetsolo.activity;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;
@RequiredArgsConstructor
@Service
public class ActivityService {
    private final ActivityRepository repository;
    public List<ActivityEntity> getAll() {
        return repository.findAll();
    }

    public ActivityEntity getById(Long id) {
        return repository.findById(id)
                .orElseThrow();
    }

    public List<ActivityEntity> getByCategoryId(Long categoryId) {
        return repository.findByCategoryId(categoryId);
    }

    public List<ActivityEntity> getByRecommendedAge(Integer age){
        return repository.findByRecommendedAge(age);
    }

    public ActivityEntity createActivity(ActivityEntity activity) {
        return repository.save(activity);
    }

    public ActivityEntity updateActivity(Long id, ActivityEntity activity) {
        ActivityEntity existingActivity = repository.findById(id)
                        .orElseThrow();
        existingActivity.setTitle(activity.getTitle());
        existingActivity.setDescription(activity.getDescription());
        existingActivity.setRecommendedAge(activity.getRecommendedAge());
        return repository.save(existingActivity);
    }

    public void deleteActivity(Long id) {
        repository.deleteById(id);
    }
}
