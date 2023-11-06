package pmjm.projetsolo.user;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RequestMapping("/users") /*http://localhost:8080/users*/
@RestController

public class UserController {

    public UserController(UserService service) {
        this.service = service;
    }

    private final UserService service;


    @GetMapping
    ResponseEntity<List<UserEntity>> getAll(){
        return new ResponseEntity<>(service.getAll(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    ResponseEntity<UserEntity> getById(@PathVariable Long id){
        return new ResponseEntity<>(service.getById(id), HttpStatus.OK);
    }

    @PostMapping
    ResponseEntity<UserEntity> createUser(@RequestBody UserEntity user){
    return new ResponseEntity<>(service.createUser(user), HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    ResponseEntity<UserEntity> updateUser(@PathVariable Long id, @RequestBody UserEntity user){
        return new ResponseEntity<>(service.updateUser(user, id), HttpStatus.OK);
    }

}
