package pmjm.projetsolo.family;

import org.springframework.stereotype.Service;
import pmjm.projetsolo.children.ChildrenEntity;
import pmjm.projetsolo.evaluation.EvaluationEntity;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
public class FamilyService {

    private final FamilyRepository repository;
    public FamilyService(FamilyRepository familyRepository){
    this.repository = familyRepository;
    }

    public List<FamilyDTO> getAll(){
        List<FamilyEntity> families = repository.findAll();
        if (families.isEmpty()) {
            throw new RuntimeException("There is no family");
        }
        List<FamilyDTO> familiesDTO = new ArrayList<>();
        families.forEach(family -> {
            FamilyDTO familyDTO = new FamilyDTO();
            familyDTO.setId(family.getId());
            familyDTO.setUsername(family.getUsername());
            familyDTO.setEmail(family.getEmail());
            familyDTO.setChildren(family.getChildren());
            familiesDTO.add(familyDTO);
        });
        return familiesDTO;
    }

    public FamilyDTO getById(Long id) {
        FamilyEntity family = repository.findById(id)
                .orElseThrow(() -> new RuntimeException("There is no family"));
        FamilyDTO familyDTO = new FamilyDTO();
        familyDTO.setId(family.getId());
        familyDTO.setUsername(family.getUsername());
        familyDTO.setEmail(family.getEmail());
        familyDTO.setChildren(family.getChildren());
        return familyDTO;

    }
    public FamilyEntity createFamily(FamilyEntity family){
        return repository.save(family);
    }

    public FamilyDTO updateFamily(FamilyEntity family, Long id) {
        FamilyEntity existingFamily =  repository.findById(id)
                .orElseThrow(() -> new RuntimeException("There is no family"));
        if (family.getUsername() != null) {
            existingFamily.setUsername(family.getUsername());
        }
        if (family.getEmail() != null) {
            existingFamily.setEmail(family.getEmail());
        }
        if (family.getPassword() != null){
        existingFamily.setPassword(family.getPassword());
        }
        repository.save(existingFamily);
        FamilyEntity updateFamily = repository.findById(id)
                .orElseThrow(() -> new RuntimeException("There is no family"));
        FamilyDTO familyDTO = new FamilyDTO();
        familyDTO.setId(updateFamily.getId());
        familyDTO.setUsername(updateFamily.getUsername());
        familyDTO.setEmail(updateFamily.getEmail());

        familyDTO.setChildren(updateFamily.getChildren());
//        familyDTO.setEvaluation(updateFamily.getEvaluation());

        return familyDTO;
    }
    public void deleteFamily(Long id) {
        repository.deleteById(id);
    }
}
