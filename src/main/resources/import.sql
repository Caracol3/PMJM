--Request for the Category entity
INSERT INTO category (name) VALUES ('Activité manuelle');
INSERT INTO category (name) VALUES ('Plein air');
INSERT INTO category (name) VALUES ('Dessin');
INSERT INTO category (name) VALUES ('Motricité');
INSERT INTO category (name) VALUES ('Jeux de société');
INSERT INTO category (name) VALUES ('Contes');

--Request for the Family entity
INSERT INTO family (username, email, password) VALUES ('Coulibaly', 'famillecoulibaly@gmail.com', 'pass123');
INSERT INTO family (username, email, password) VALUES ('Wallet', 'famillewallet@gmail.com', 'pass123');
INSERT INTO family (username, email, password) VALUES ('Meyer', 'famillemeyer@gmail.com', 'pass123');
INSERT INTO family (username, email, password) VALUES ('Parks', 'familleparks@gmail.com', 'pass123');
INSERT INTO family (username, email, password) VALUES ('Sankara', 'famillesankara@gmail.com', 'pass123');
INSERT INTO family (username, email, password) VALUES ('Luxembourg', 'familleluxembourg@gmail.com', 'pass123');
INSERT INTO family (username, email, password) VALUES ('Dupont', 'familledupontgmail.com', 'pass123');

--Request for the Child entity
INSERT INTO children (username, birthday, gender, family_id) VALUES ('Mila', '2017-12-20', 'F', 1);
INSERT INTO children (username, birthday, gender, family_id) VALUES ('Emma', '2008-02-02', 'F', 2);
INSERT INTO children (username, birthday, gender, family_id) VALUES ('Lola', '2012-02-02', 'F', 2);
INSERT INTO children (username, birthday, gender, family_id) VALUES ('Leo', '2018-06-02', 'M', 3);
INSERT INTO children (username, birthday, gender, family_id) VALUES ('Robin', '2021-06-02', 'M', 3);
INSERT INTO children (username, birthday, gender, family_id) VALUES ('Francis', '2012-06-02', 'M', 4);
INSERT INTO children (username, birthday, gender, family_id) VALUES ('Tomas Junior', '2012-06-02', 'M', 5);
INSERT INTO children (username, birthday, gender, family_id) VALUES ('Rosette', '2012-06-02', 'F', 6);
INSERT INTO children (username, birthday, gender, family_id) VALUES ('Titouan', '2002-06-02', 'M', 7);


--Request for the Activity entity
--activité manuelle
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Pâte à sel', 'La pâte à sel est une pâte à modeler qui durcit à l''air libre. Elle est composée de farine, de sel et d''eau. Elle est très facile à réaliser et permet de réaliser de nombreuses créations.', 'assets/card_pictures/pate_a_sel.jpg', 'https://www.marmiton.org/recettes/recette_pate-a-sel_530587.aspx', 6, 1);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Origami', 'L''origami est une activité artistique qui consiste à plier du papier pour créer des formes variées. Les enfants peuvent réaliser des animaux, des fleurs, des avions et bien plus encore.', 'assets/card_pictures/origami.jpg', 'https://tuto-origami.fr/', 6, 1);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Peinture sur galets', 'La peinture sur galets est une activité artistique amusante qui permet de créer de jolis objets décoratifs. Les galets peuvent être transformés en animaux, en motifs abstraits ou en personnages colorés.', 'assets/card_pictures/peinture_sur_galet.jpg', 'https://fb-rocks.com/tutoriels-361200-2-19-12.php', 5, 1);
INSERT INTO activity (title, description, image, tutorial, recommended_age,category_id) VALUES ('Bracelet Bresilien', 'Le bracelet brésilien est une activité manuelle qui permet de créer des bracelets colorés en utilisant des fils de coton. Les enfants peuvent laisser libre cours à leur imagination pour créer des motifs uniques.', 'assets/card_pictures/bracelet-bresilien.jpg', 'https://www.perlesandco.com/tutoriels/f2591-bracelet-bresilien.html', 7, 1);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Constructions en carton', 'Les constructions en carton sont une activité créative qui permet aux enfants de donner libre cours à leur imagination en utilisant des matériaux recyclés. Les boîtes, les tubes et les emballages peuvent être transformés en maisons, en voitures, en robots et bien plus encore.', 'assets/card_pictures/carton.jpg', 'https://www.unjourunjeu.fr/loisirs-creatifs/20-jeux-en-carton/', 7, 1);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Fabrication de marionnettes', 'La fabrication de marionnettes est une activité artistique et ludique qui permet aux enfants de créer leurs propres personnages en tissu ou en papier. Les marionnettes peuvent être utilisées pour inventer des histoires et jouer des spectacles.', 'assets/card_pictures/marionette.jpg', 'https://www.jeuxetcompagnie.fr/faire-une-marionnette-10-idees-simples-et-originales/', 6, 1);

--plein air
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Exploration de la nature', 'Une exploration de la nature permet aux enfants de découvrir la biodiversité...', 'assets/card_pictures/nature.jpg', 'https://www.educatout.com/utilitaires/trucs-et-astuces/divers---activites/10-activites-pour-decouvrir-la-nature.htm', 5, 2);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Atelier jardinage', 'Un atelier de jardinage initie les enfants aux joies de cultiver des plantes...', 'assets/card_pictures/jardinage.jpg', 'https://monjardinmamaison.maison-travaux.fr/mon-jardin-ma-maison/amenagement-de-jardins/deco-jardin/jardin-idees-de-diy-a-faire-enfants-199585.html', 4, 2);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Pique-nique découverte', 'Un pique-nique découverte est une façon ludique de combiner repas et exploration...', 'assets/card_pictures/pique-nique.jpg', 'https://famigros.migros.ch/fr/excursions-loisirs/idees-de-loisirs/en-plein-air-et-dans-la-nature/lieux-pique-nique-pour-enfants', 4, 2);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Observation des étoiles', 'L''observation des étoiles est une activité fascinante qui éveille la curiosité...', 'assets/card_pictures/etoiles.jpg', 'https://72.kidiklik.fr/articles/335898-debuter-lastronomie-avec-les-enfants-et-observer-les-etoiles-en-famille.html', 7, 2);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Course d''orientation', 'Une course d''orientation est un jeu excitant qui combine sport et aventure...', 'assets/card_pictures/orientation.jpg', 'https://lescoffresmagiques.com/course-dorientation-pour-enfant/', 6, 2);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Chasse au trésor', 'La chasse au trésor nature est une aventure passionnante qui invite les enfants à explorer l''environnement extérieur tout en s''amusant...', 'assets/card_pictures/chasse_au_tresor.png', 'https://quizotresor.com/ ', 4, 2);

--motricité
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Jeu de jonglage', 'Le jeu de jonglage est une activité qui favorise la coordination œil-main et la motricité fine. En jonglant avec des balles ou des foulards, les enfants améliorent leur dextérité et leur contrôle moteur.', 'assets/card_pictures/jongle.jpg', 'https://www.youtube.com/watch?v=wDdZKWkoNys', 9, 4);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Jeu de relais', 'Le jeu de relais est une activité qui encourage la coordination, la vitesse et l''endurance. En courant, en sautant et en transportant des objets, les enfants développent leur motricité globale.', 'assets/card_pictures/relais.jpg', 'https://momes.parents.fr/jeux/jeux-exterieur/courses-relais-rapidite/jeux-de-courses-de-relais-842080', 8, 4);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Jeu de lancer d''objets', 'Le jeu de lancer d''objets est une activité qui favorise la coordination œil-main et la motricité globale. En lançant des balles ou des anneaux, les enfants améliorent leur précision et leur contrôle moteur.', 'assets/card_pictures/lancer.png', 'https://img-31.ccm2.net/9a85Ljzv1gmyr6O3V2y15BjzQjQ=/1500x/smart/cae18124a6f2467b8e2980d7d00c237a/ccmcms-hugo/11476505.jpg', 4, );
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Danse libre', 'La danse libre est une activité qui encourage les enfants à bouger librement et à explorer différents mouvements. En dansant sur de la musique, les enfants développent leur coordination et leur équilibre. Créez un espace de danse avec de la musique entraînante. Encouragez les enfants à danser librement en explorant des mouvements variés pour stimuler leur motricité.', 'assets/card_pictures/danse-libre.jpg', 'https://plaisir-d-apprendre.com/eveil-a-la-danse/', 6, 4);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Parcours d''obstacles', 'Le parcours d''obstacles est une activité physique ludique qui encourage les enfants à développer leur motricité. En sautant, en rampant et en grimpant, les enfants améliorent leur coordination et leur agilité.', 'assets/card_pictures/parcours-motricite.jpg', 'Créez un parcours d''obstacles en utilisant des cônes, des cerceaux, des cordes et d''autres accessoires. Encouragez les enfants à franchir les obstacles de différentes manières pour stimuler leur motricité.', 5, 4 );

--jeux de société
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('UNO', 'Le UNO est un jeu de cartes classique qui combine stratégie et rapidité. Les joueurs doivent se débarrasser de leurs cartes en associant les couleurs ou les chiffres, tout en utilisant des cartes spéciales pour contrer leurs adversaires.', 'assets/card_pictures/uno.jpg', 'https://fr.wikipedia.org/wiki/Uno', 6, 5);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Mon premier verger', 'Mon premier verger est une version adaptée du jeu classique HABA « Le verger ». Les enfants doivent cueillir ensemble les fruits avant que le corbeau Théo n’atteigne le verger. Ce jeu favorise la coopération et la motricité des enfants.', 'assets/card_pictures/verger.jpg', 'https://cdn.1j1ju.com/medias/f5/cc/58-mes-premiers-jeux-premier-verger-regle.pdf', 4, 5);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Doudou', 'Doudou est un jeu pour enfant malin qui invite à mener une enquête en famille pour retrouver le doudou farceur. Ce jeu stimule la réflexion et l''interaction, tout en favorisant la motricité et la coordination.', 'assets/card_pictures/doudou.jpg', 'https://www.youtube.com/watch?v=lBeTLLbnQNk', 5, 5);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Gagne ton papa !', 'Gagne ton papa ! est un jeu pédagogique et amusant axé sur la logique et la géométrie dans l’espace. Ce jeu favorise la motricité fine et la résolution de problèmes, offrant du plaisir pour toute la famille.', 'assets/card_pictures/papa.jpg', 'https://www.youtube.com/watch?v=bfgcIPXWCtI', 6, 5);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Comme des petits singes', 'Comme des petits singes est un jeu d''ambiance coopératif qui encourage les tout-petits à se comporter comme des petits singes. En reproduisant les mouvements des singes pour rire et bouger, les enfants développent leur coordination et leur motricité globale.', 'assets/card_pictures/singes.jpg', 'https://www.youtube.com/watch?v=KM-ACqiisrY', 3, 5);

//Contes
INSERT INTO activity (title, description, image,youtube_link, recommended_age, category_id) VALUES ('Jack et le haricot magique', 'Le conte de "Jack et le haricot magique" est une histoire classique remplie de magie et d''aventure. Les enfants seront captivés par les exploits de Jack et son voyage au sommet du haricot magique.', 'static/assets/images/jack_et_le_haricot_magique.png', 'https://www.youtube.com/watch?v=QoWvdH7jmE8', 5, 6, );
INSERT INTO activity (title, description, image, youtube_link, recommended_age, category_id) VALUES ('La princesse Alva et le dragon de feu qui tousse', 'L''histoire de "La princesse Alva et le dragon de feu qui tousse" est un conte captivant rempli de courage et d''aventure. Les enfants seront transportés dans un monde fantastique en suivant les péripéties de la princesse Alva.', 'static/assets/images/princesse_alva_dragon_feu.png', 'https://www.youtube.com/watch?v=2cjvjTFP7nE', 6, 6);
INSERT INTO activity (title, description, image, youtube_link, recommended_age, category_id) VALUES ('La petite poule rousse', 'Le conte de "La petite poule rousse" est une histoire charmante qui enseigne des leçons de travail d''équipe et de partage. Les enfants seront enchantés par les aventures de la petite poule rousse et ses amis.', 'static/assets/images/petite_poule_rousse.png', 'https://www.youtube.com/watch?v=Zj8FsRGHfI4&pp=ygUSY29udGVzIHBvdXIgZW5mYW50', 4, 6);
INSERT INTO activity (title, description, image, youtube_link, recommended_age, category_id) VALUES ('Cornebidouille', 'Le conte de "Cornebidouille" est une histoire captivante remplie de magie et de courage. Les enfants seront transportés dans un monde fantastique en suivant les aventures du personnage principal face à la redoutable Cornebidouille.', 'static/assets/images/cornebidouille.png', 'https://www.youtube.com/watch?v=Gm_506xbcD4', 5, 6);
INSERT INTO activity (title, description, image, youtube_link, recommended_age, category_id) VALUES ('Le fabuleux voyage de Ferdinand', 'Le conte du "Fabuleux voyage de Ferdinand" est une histoire captivante qui emmène les enfants dans un voyage extraordinaire. Ils seront émerveillés par les aventures de Ferdinand et ses amis.', 'static/assets/images/fabuleux_voyage_ferdinand.png', 'https://www.youtube.com/watch?v=8jrcnAuqAII', 6, 6);
INSERT INTO activity (title, description, image, youtube_link, recommended_age, category_id) VALUES ('La maîtresse qui n''aimait pas les élèves', 'Le conte de "La maîtresse qui n''aimait pas les élèves" est une histoire captivante qui enseigne des leçons de tolérance et d''amitié. Les enfants seront transportés dans un monde merveilleux en suivant les aventures des élèves et leur maîtresse.', 'static/assets/images/maitresse_pas_aime_eleves.png', 'https://www.youtube.com/watch?v=aIc4ea0_XQE', 7, 6);

INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Chat_licorne', 'assets/card_pictures/coloring/chat_licorne.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Chat_licorne', 'assets/card_pictures/coloring/chat_licorne2.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Chevalier', 'assets/card_pictures/coloring/chevalier.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Animaux de la ferme', 'assets/card_pictures/coloring/ferme.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Fleur', 'assets/card_pictures/coloring/fleur1.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Licorne', 'assets/card_pictures/coloring/licorne.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Licorne2', 'assets/card_pictures/coloring/licorne2.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Licorne3', 'assets/card_pictures/coloring/licorne3.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala1.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala2.png',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala3.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala4.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala5.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Minion', 'assets/card_pictures/coloring/minion.jpg',2, 3);
INSERT INTO activity (title, image, recommended_age,category_id) VALUES ('Minion', 'assets/card_pictures/coloring/minion2.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Mulan', 'assets/card_pictures/coloring/mulan.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Pat''patrouille', 'assets/card_pictures/coloring/patrouille.webp',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Pat''patrouille', 'assets/card_pictures/coloring/patrouille3.webp',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Pat''patrouille', 'assets/card_pictures/coloring/patrouille4.webp',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Pat''patrouille', 'assets/card_pictures/coloring/patrouille2.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Peach', 'assets/card_pictures/coloring/peach.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('La reine des neiges', 'assets/card_pictures/coloring/reine.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('La reine des neiges', 'assets/card_pictures/coloring/reine2.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('La reine des neiges', 'assets/card_pictures/coloring/reine3.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('La reine des neiges', 'assets/card_pictures/coloring/reine4.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('La reine des neiges', 'assets/card_pictures/coloring/reine6.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Zootopie', 'assets/card_pictures/coloring/zootopia.jpg',2, 3);
INSERT INTO activity (title, image,recommended_age, category_id) VALUES ('Zootopie', 'assets/card_pictures/coloring/zootopia2.jpg',2, 3);


