package pmjm.projetsolo.user;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private final UserRepository repository;
    public UserService(UserRepository userRepository){
    this.repository = userRepository;
    }
    public List<UserEntity> getAll(){
        return repository.findAll();
    }

    public UserEntity getById(Long id) {
        return repository.findById(id)
                .orElseThrow();
    }

    public UserEntity createUser(UserEntity user){
        return repository.save(user);
    }
    public UserEntity updateUser(UserEntity user, Long id) {
        UserEntity existingUser =  repository.findById(id)
                .orElseThrow();
        existingUser.setUsername(user.getUsername());
        existingUser.setEmail(user.getEmail());
        existingUser.setPassword(user.getPassword());
        return  repository.save(existingUser);
    }

    public void deleteUser(Long id) {
        repository.deleteById(id);
    }
}
