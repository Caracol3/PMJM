package pmjm.projetsolo.family;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FamilyService {

    private final FamilyRepository repository;
    public FamilyService(FamilyRepository familyRepository){
    this.repository = familyRepository;
    }
    public List<FamilyEntity> getAll(){
        return repository.findAll();
    }
    public FamilyEntity getById(Long id) {
        return repository.findById(id)
                .orElseThrow();
    }
    public FamilyEntity createUser(FamilyEntity family){
        return repository.save(family);
    }
    public FamilyEntity updateUser(FamilyEntity family, Long id) {
        FamilyEntity existingFamily =  repository.findById(id)
                .orElseThrow();
        existingFamily.setUsername(family.getUsername());
        existingFamily.setEmail(family.getEmail());
        existingFamily.setPassword(family.getPassword());
        return  repository.save(existingFamily);
    }
    public void deleteFamily(Long id) {
        repository.deleteById(id);
    }
}
