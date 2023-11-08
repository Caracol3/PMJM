package pmjm.projetsolo.category;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import pmjm.projetsolo.category.CategoryEntity;

import java.util.List;


@RequiredArgsConstructor
@Service
public class CategoryService {

    private final CategoryRepository repository;

    public List<CategoryEntity> getAll() {
        return repository.findAll();
    }
    public CategoryEntity getById(Long id) {
        return repository.findById(id)
                .orElseThrow();
    }
    public CategoryEntity createCategory(CategoryEntity category) {
        return  repository.save(category);
    }

    public CategoryEntity updateCategory(Long id, CategoryEntity category) {
        CategoryEntity existingCategory = repository.findById(id)
                .orElseThrow();
        existingCategory.setName(category.getName());
        return repository.save(existingCategory);
    }

    public void deleteCategory(Long id) {
        repository.deleteById(id);
    }
}
