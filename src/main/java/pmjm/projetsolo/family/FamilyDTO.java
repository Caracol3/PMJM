package pmjm.projetsolo.family;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@RequiredArgsConstructor
public class FamilyDTO {
    private Long id;
    private String username;
    private String email;
}
