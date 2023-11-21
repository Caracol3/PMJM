package pmjm.projetsolo.children;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pmjm.projetsolo.family.FamilyEntity;
import pmjm.projetsolo.family.FamilyRepository;
import pmjm.projetsolo.family.FamilyService;

import java.util.List;

@RequiredArgsConstructor
@RequestMapping("/children")
@RestController
public class ChildrenController {
    private final ChildrenService service;
    private final FamilyService familyService;

    @GetMapping
    ResponseEntity<List<ChildrenEntity>> getAll() {
        return new ResponseEntity<>(service.getAll(), HttpStatus.OK);
    }

    @GetMapping("{id}")
    ResponseEntity<ChildrenEntity> getChildrenById(@PathVariable Long id) {
        return new ResponseEntity<>(service.getById(id), HttpStatus.OK);
    }

    @PostMapping("/create/{familyId}")
    ResponseEntity<FamilyEntity> createChildren(@RequestBody ChildrenEntity children, @PathVariable Long familyId) {
        return new ResponseEntity<>(service.addChildToFamily(familyId, children), HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    ResponseEntity<ChildrenEntity> updateChildren(@PathVariable Long id, @RequestBody ChildrenEntity children) {
        return new ResponseEntity<>(service.updateChildren(id, children), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    ResponseEntity<?> delete(@PathVariable Long id) {
        service.deleteChildren(id);
            return new ResponseEntity<>(HttpStatus.OK);
        }
    }

