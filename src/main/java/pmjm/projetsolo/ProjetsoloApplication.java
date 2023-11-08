package pmjm.projetsolo;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import pmjm.projetsolo.family.FamilyEntity;

@SpringBootApplication
public class ProjetsoloApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(ProjetsoloApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		FamilyEntity coulibaly = new FamilyEntity();
	}
}
