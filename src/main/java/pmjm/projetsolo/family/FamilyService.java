package pmjm.projetsolo.family;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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
        return familyDTO;
//        return repository.findById(id)
//                .orElseThrow();
    }
    public FamilyEntity createUser(FamilyEntity family){
        return repository.save(family);
    }
    public FamilyDTO updateUser(FamilyEntity family, Long id) {
        FamilyEntity existingFamily =  repository.findById(id)
                .orElseThrow(() -> new RuntimeException("There is no family"));
        existingFamily.setUsername(family.getUsername());
        existingFamily.setEmail(family.getEmail());
        existingFamily.setPassword(family.getPassword());
        FamilyEntity updateFamily = repository.save(existingFamily);
        FamilyDTO familyDTO = new FamilyDTO();
        familyDTO.setId(updateFamily.getId());
        familyDTO.setUsername(updateFamily.getUsername());
        familyDTO.setEmail(updateFamily.getEmail());
        return familyDTO;

    }
    public void deleteFamily(Long id) {
        repository.deleteById(id);
    }
}
