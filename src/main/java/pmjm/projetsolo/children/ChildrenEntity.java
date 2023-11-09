package pmjm.projetsolo.children;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import pmjm.projetsolo.family.FamilyEntity;

import java.time.LocalDate;

@RequiredArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "children")
public class ChildrenEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;

    public String username;
    public LocalDate birthday;
    public String gender;

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "family_id")
    private FamilyEntity family;
}
