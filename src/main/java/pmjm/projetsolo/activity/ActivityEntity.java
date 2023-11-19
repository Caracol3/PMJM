package pmjm.projetsolo.activity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import pmjm.projetsolo.category.CategoryEntity;
import pmjm.projetsolo.evaluation.EvaluationEntity;

import java.util.HashSet;
import java.util.Set;

@RequiredArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "activity")
public class ActivityEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    @Column(length = 1000)
    private String description;
    private String image;
    @Column(length = 500)
    private String tutorial;
    private String youtube_link;
    private int recommendedAge;

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JsonIgnoreProperties("activity")
    private CategoryEntity category;

    @OneToMany(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "activity_id")
    private Set<EvaluationEntity> evaluation = new HashSet<>();
}
