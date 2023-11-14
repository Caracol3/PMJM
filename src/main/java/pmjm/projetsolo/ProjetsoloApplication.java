package pmjm.projetsolo;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import pmjm.projetsolo.activity.ActivityEntity;
import pmjm.projetsolo.activity.ActivityRepository;
import pmjm.projetsolo.category.CategoryEntity;
import pmjm.projetsolo.category.CategoryRepository;
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
private final ActivityRepository aRepository;
private final CategoryRepository catRepository;
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

		// Création de la catégorie "Activité manuelle"
		CategoryEntity activiteManuelle = new CategoryEntity();
		activiteManuelle.setName("Activité manuelle");

		// Création de la catégorie "Plein air"
		CategoryEntity pleinAir = new CategoryEntity();
		pleinAir.setName("Plein air");


		ActivityEntity braceletBresilien = new ActivityEntity();
		braceletBresilien.setTitle("Bracelet brésilien");
		braceletBresilien.setDescription("Une activité manuelle colorée et amusante, parfaite pour éveiller la créativité de vos enfants ! Ces bracelets, aux motifs et couleurs variés, sont plus qu'un simple accessoire de mode : ils sont un formidable moyen pour les enfants d'exprimer leur individualité tout en développant leur motricité fine et leur concentration. Faciles à réaliser, ces bracelets tissent également des liens d'amitié, encourageant le partage et l'échange entre les jeunes créateurs. ");
		braceletBresilien.setTutorial("https://www.youtube.com/watch?v=f5ADxEwp_T8");
		braceletBresilien.setRecommendedAge(6);
		braceletBresilien.setCategory(activiteManuelle);
//		braceletBresilien.setImage("imagesCarte/bracelet-bresilien.jpg");
		braceletBresilien.setImage("https://atelier-macrame.fr/cdn/shop/products/bracelet-macrame-mathilde-atelier-macrame-poignet_2000x.jpg?v=1612107856");
		aRepository.save(braceletBresilien);

		ActivityEntity chasseAuTresor = new ActivityEntity();
		chasseAuTresor.setTitle("Chasse au trésor");
		chasseAuTresor.setDescription("La chasse au trésor nature est une aventure passionnante qui invite les enfants à explorer l'environnement extérieur tout en s'amusant. Cette activité stimule leur curiosité, développe leurs compétences en observation et en orientation, et encourage la coopération si elle est réalisée en groupe. Adaptée à tous les âges, elle peut se faire dans un jardin, un parc, une forêt ou tout autre espace extérieur sécurisé.");
		chasseAuTresor.setTutorial("    Préparation des indices : Avant l'activité, prépare des indices qui guideront les enfants vers différents endroits de l'espace extérieur. Chaque indice doit mener au prochain, avec le dernier menant au trésor. Les indices peuvent être des énigmes, des devinettes, des instructions simples ou des cartes dessinées, en fonction de l'âge des participants.\n" +
				"    Cacher les indices et le trésor : Cache les indices dans l'ordre dans différents endroits. Le dernier indice doit mener au trésor. Assure-toi que les cachettes sont sûres et accessibles pour les enfants.\n" +
				"    Expliquer les règles : Avant de commencer, explique aux enfants comment fonctionne la chasse au trésor, les règles de sécurité, et donne-leur le premier indice.\n" +
				"    Début de l'aventure : Les enfants suivent les indices un à un. Encourage-les à observer leur environnement et à travailler ensemble s'ils sont en groupe.\n" +
				"    Découverte du trésor : Une fois que les enfants ont trouvé le trésor, célèbre leur succès ! C'est le moment idéal pour discuter de ce qu'ils ont observé et appris durant leur aventure.");
		chasseAuTresor.setRecommendedAge(4);
		chasseAuTresor.setCategory(pleinAir);
chasseAuTresor.setImage("static/assets/images/chasse_au_tresor.png");
aRepository.save(chasseAuTresor);
	}
}
