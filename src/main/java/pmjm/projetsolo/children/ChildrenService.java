package pmjm.projetsolo.children;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pmjm.projetsolo.family.FamilyEntity;
import pmjm.projetsolo.family.FamilyRepository;

import java.util.List;

@RequiredArgsConstructor
@Service
public class ChildrenService {
    private final ChildrenRepository repository;
    private final FamilyRepository familyRepository;

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

    public FamilyEntity addChildToFamily(Long familyId, ChildrenEntity child) {
        FamilyEntity family = familyRepository.findById(familyId)
                .orElseThrow(() -> new RuntimeException("Family not found"));

        repository.save(child);
        family.getChildren().add(child);
        return familyRepository.save(family);
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
