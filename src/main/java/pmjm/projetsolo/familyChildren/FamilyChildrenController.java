//package pmjm.projetsolo.familyChildren;
//
//import lombok.RequiredArgsConstructor;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.*;
//import pmjm.projetsolo.children.ChildrenEntity;
//import pmjm.projetsolo.children.ChildrenService;
//import pmjm.projetsolo.family.FamilyDTO;
//import pmjm.projetsolo.family.FamilyEntity;
//import pmjm.projetsolo.family.FamilyRepository;
//import pmjm.projetsolo.family.FamilyService;
//
//import java.util.Set;
//
//@RestController
//@RequiredArgsConstructor
//@RequestMapping("/familyChildren")
//
//public class FamilyChildrenController {
//    private final FamilyService familyService;
//    private final ChildrenService childrenService;
//    private final FamilyRepository familyRepository;
//
//
//
//    }
//    @PostMapping("/{familyEntityId}/children}")
//    public ResponseEntity<String> addChildrenToFamily(@PathVariable Long familyEntityId, @RequestBody ChildrenEntity children){
//        FamilyEntity existingFamily = familyRepository.findById(familyEntityId)
//                .orElseThrow(() -> new RuntimeException("Family not found"));
//
//
//    }
//
//
//}
