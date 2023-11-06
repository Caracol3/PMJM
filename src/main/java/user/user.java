package user;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.bind.annotation.RestController;

@NoArgsConstructor
@RestController
@Setter
@Getter
@Entity
public class user {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    public long id;

    public String username;
    public String email;
    public String password;
}
