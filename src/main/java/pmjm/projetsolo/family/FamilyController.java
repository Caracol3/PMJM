package pmjm.projetsolo.family;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pmjm.projetsolo.children.ChildrenEntity;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@RequestMapping("/family") /*http://localhost:8080/users*/
@RequiredArgsConstructor
@RestController

public class FamilyController {
    private final FamilyService service;
    @GetMapping
    ResponseEntity<List<FamilyDTO>> getAll(){
        return new ResponseEntity<>(service.getAll(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    ResponseEntity<FamilyDTO> getFamilyById(@PathVariable Long id){
        return new ResponseEntity<>(service.getById(id), HttpStatus.OK);
    }

    @PostMapping
    ResponseEntity<FamilyEntity> createFamily(@RequestBody FamilyEntity user){

    return new ResponseEntity<>(service.createFamily(user), HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    ResponseEntity<FamilyDTO> updateUser(@PathVariable Long id, @RequestBody FamilyEntity user){
        return new ResponseEntity<>(service.updateFamily(user, id), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    ResponseEntity<?> deleteUser(@PathVariable Long id) {
        service.deleteFamily(id);
        return new ResponseEntity<>(HttpStatus.OK);

    }


}
