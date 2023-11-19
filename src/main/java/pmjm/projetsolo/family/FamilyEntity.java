package pmjm.projetsolo.family;

import jakarta.persistence.*;
import lombok.*;
import pmjm.projetsolo.children.ChildrenEntity;
import pmjm.projetsolo.evaluation.EvaluationEntity;

import java.util.HashSet;
import java.util.Set;

@RequiredArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "family")
public class FamilyEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String username;
    private String email;
    private String password;

    @OneToMany(cascade =  CascadeType.PERSIST)
    @JoinColumn(name = "family_id")
    private Set<ChildrenEntity> children = new HashSet<>();

    @OneToMany( cascade = CascadeType.PERSIST)
    @JoinColumn(name = "family_id")
    private Set<EvaluationEntity> evaluation = new HashSet<>();
}
