package pmjm.projetsolo.activity;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/activity")
@RequiredArgsConstructor
@RestController

public class ActivityController {

    private final ActivityService service;

    @GetMapping
    ResponseEntity<List<ActivityEntity>> getAll(){
        return new ResponseEntity<>(service.getAll(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    ResponseEntity<ActivityEntity> findActivityById(@PathVariable Long id){
        return new ResponseEntity<>(service.getById(id), HttpStatus.OK);
    }

    @GetMapping("category/{categoryId}")
    ResponseEntity<List<ActivityEntity>> getActivityByCategoryId(@PathVariable Long categoryId){
        return new ResponseEntity<>(service.getByCategoryId(categoryId), HttpStatus.OK);
    }

    @PostMapping
    ResponseEntity<ActivityEntity> createActivity(@RequestBody ActivityEntity activity){
        return  new ResponseEntity<>(service.createActivity(activity), HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    ResponseEntity<ActivityEntity> updateActivity(@PathVariable Long id, @RequestBody ActivityEntity activity){
        return new ResponseEntity<>(service.updateActivity(id, activity), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    ResponseEntity<?> deleteActivity(@PathVariable Long id){
        service.deleteActivity(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
