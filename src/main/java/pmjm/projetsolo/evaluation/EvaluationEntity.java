package pmjm.projetsolo.evaluation;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import pmjm.projetsolo.activity.ActivityEntity;
import pmjm.projetsolo.family.FamilyEntity;

@Getter
@Setter
@RequiredArgsConstructor
@Entity
@Table(name = "evaluation")
public class EvaluationEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;

    public int note;
    public String commentaire;

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "family_id")
    private FamilyEntity family;

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "activity_id")
    private ActivityEntity activity;
}
