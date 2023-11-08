package pmjm.projetsolo.evaluation;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/evaluations")
@RequiredArgsConstructor
@RestController
public class EvaluationController {

    private final EvaluationService service;

    @GetMapping
    ResponseEntity<List<EvaluationEntity>> getAll(){
        return new ResponseEntity<>(service.getAll(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    ResponseEntity<EvaluationEntity> getEvaluationById(@PathVariable Long id){
        return new ResponseEntity<>(service.getEvaluationById(id), HttpStatus.OK);
    }

    @PostMapping
    ResponseEntity<EvaluationEntity> createEvaluation(@RequestBody EvaluationEntity evaluation){
        return new ResponseEntity<>(service.createEvaluation(evaluation), HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    ResponseEntity<EvaluationEntity> updateEvaluation(@PathVariable Long id, @RequestBody EvaluationEntity evaluation){
        return new ResponseEntity<>(service.updateEvaluation(id, evaluation), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    ResponseEntity<Void> deleteEvaluation(@PathVariable Long id){
        service.deleteEvaluation(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
