package pmjm.projetsolo;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import pmjm.projetsolo.children.ChildrenEntity;
import pmjm.projetsolo.children.ChildrenRepository;
import pmjm.projetsolo.family.FamilyEntity;
import pmjm.projetsolo.family.FamilyRepository;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@SpringBootApplication
@RequiredArgsConstructor
public class ProjetsoloApplication implements CommandLineRunner {
private final FamilyRepository frepository;
private final ChildrenRepository crepository;
	public static void main(String[] args) {
		SpringApplication.run(ProjetsoloApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		FamilyEntity coulibaly = new FamilyEntity();
		coulibaly.setUsername("coulibaly");
		coulibaly.setEmail("mathieucoulibalyàddsfsd.com");
		coulibaly.setPassword("123456");
		frepository.save(coulibaly);


		ChildrenEntity mila = new ChildrenEntity();
		mila.setUsername("mila");
		mila.setBirthday(LocalDate.parse("2015-01-01"));
		mila.setGender("F");
		crepository.save(mila);

		mila.setFamily(coulibaly);
		crepository.save(mila);



	}
}
