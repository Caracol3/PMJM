package pmjm.projetsolo.evaluation;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class EvaluationService {

    private final EvaluationRepository repository;

    public List<EvaluationEntity> getAll() {
        return repository.findAll();
    }

    public EvaluationEntity getEvaluationById(Long id) {
        return  repository.findById(id)
                .orElseThrow();
    }

    public EvaluationEntity createEvaluation(EvaluationEntity evaluation) {
        return repository.save(evaluation);
    }

    public EvaluationEntity updateEvaluation(Long id, EvaluationEntity evaluation){
        EvaluationEntity existingEvaluation = repository.findById(id)
                .orElseThrow(() -> new RuntimeException("L'Id n° " + id + "is not found"));
        existingEvaluation.setNote(evaluation.getNote());
        existingEvaluation.setCommentaire(evaluation.getCommentaire());
        return repository.save(existingEvaluation);
    }

    public void deleteEvaluation(Long id) {
        repository.deleteById(id);
    }
}
