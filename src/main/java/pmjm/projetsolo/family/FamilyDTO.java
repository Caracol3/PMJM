package pmjm.projetsolo.family;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import pmjm.projetsolo.children.ChildrenEntity;

import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@RequiredArgsConstructor
public class FamilyDTO {
    private Long id;
    private String username;
    private String email;
    private Set<ChildrenEntity> children = new HashSet<>() ;
}
