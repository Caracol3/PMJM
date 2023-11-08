package pmjm.projetsolo.children;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class ChildrenService {
    private final ChildrenRepository repository;

    public List<ChildrenEntity> getAll(){
        return repository.findAll();
    }

    public ChildrenEntity getById(Long id) {
        return repository.findById(id)
                .orElseThrow();
    }

    public ChildrenEntity createChildren(ChildrenEntity children) {
        return repository.save(children);
    }

    public ChildrenEntity updateChildren(Long id, ChildrenEntity children) {
        ChildrenEntity existingChildren = repository.findById(id)
                .orElseThrow();
        existingChildren.setUsername(children.getUsername());
        existingChildren.setBirthday(children.getBirthday());
        existingChildren.setGender(children.getGender());
        return repository.save(existingChildren);
    }

    public void deleteChildren(Long id) {
        repository.deleteById(id);
    }
}
