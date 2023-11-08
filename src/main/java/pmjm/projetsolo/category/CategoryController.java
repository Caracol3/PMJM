package pmjm.projetsolo.category;

import jdk.jfr.Category;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/categories")
public class CategoryController {

    private final CategoryService service;

    @GetMapping
    ResponseEntity<List<CategoryEntity>> getAll(){
        return new ResponseEntity<>(service.getAll(), HttpStatus.OK);
    }
    @GetMapping("/{id}")
    ResponseEntity<CategoryEntity> getCategoryById(@PathVariable Long id){
        return new ResponseEntity<>(service.getById(id),HttpStatus.OK);
    }
    @PostMapping
    ResponseEntity<CategoryEntity> createCategory(@RequestBody CategoryEntity category){
        return new ResponseEntity<>(service.createCategory(category), HttpStatus.CREATED);
    }
    @PutMapping("/{id}")
    ResponseEntity<CategoryEntity> updateCategory(@PathVariable Long id, @RequestBody CategoryEntity category){
        return  new ResponseEntity<>(service.updateCategory(id, category), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    ResponseEntity<Void> deleteCategory(@PathVariable Long id){
        service.deleteCategory(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
