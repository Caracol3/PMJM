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
INSERT INTO activity (title, description, image, tutorial, recommendedAge, category_id) VALUES ('Chasse au trésor', 'La chasse au trésor nature est une aventure passionnante qui invite les enfants à explorer l''environnement extérieur tout en s''amusant...', 'assets/card_pictures/chasse_au_tresor.jpg', 'Préparation des indices : Avant l''activité, prépare des indices qui guideront les enfants... ', 4, 2);
INSERT INTO activity (title, description, image, tutorial, recommendedAge, category_id) VALUES ('Course d''orientation', 'Une course d''orientation est un jeu excitant qui combine sport et aventure...', 'static/assets/images/course_orientation.png', 'Organiser les points de contrôle : Définis plusieurs points de contrôle à travers le parc...', 6, 2);
INSERT INTO activity (title, description, image, tutorial, recommendedAge, category_id) VALUES ('Exploration de la nature', 'Une exploration de la nature permet aux enfants de découvrir la biodiversité...', 'static/assets/images/exploration_nature.png', 'Planifier le parcours : Choisis un sentier adapté à l''âge des enfants...', 5, 2);
INSERT INTO activity (title, description, image, tutorial, recommendedAge, category_id) VALUES ('Atelier jardinage', 'Un atelier de jardinage initie les enfants aux joies de cultiver des plantes...', 'static/assets/images/atelier_jardinage.png', 'Préparer le matériel : Assure-toi d''avoir tous les outils nécessaires...', 4, 2);
INSERT INTO activity (title, description, image, tutorial, recommendedAge, category_id) VALUES ('Pique-nique découverte', 'Un pique-nique découverte est une façon ludique de combiner repas et exploration...', 'static/assets/images/pique_nique.png', 'Choisir un lieu adapté : Trouve un endroit agréable et sûr pour le pique-nique...', 4, 2);
INSERT INTO activity (title, description, image, tutorial, recommendedAge, category_id) VALUES ('Observation des étoiles', 'L''observation des étoiles est une activité fascinante qui éveille la curiosité...', 'static/assets/images/observation_etoiles.png', 'Préparer le matériel d''observation : Apporte des jumelles ou un petit télescope...', 7, 2);

--motricité
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Parcours d''obstacles', 'Le parcours d''obstacles est une activité physique ludique qui encourage les enfants à développer leur motricité. En sautant, en rampant et en grimpant, les enfants améliorent leur coordination et leur agilité.', 'static/assets/images/parcours_obstacles.png', 'Créez un parcours d''obstacles en utilisant des cônes, des cerceaux, des cordes et d''autres accessoires. Encouragez les enfants à franchir les obstacles de différentes manières pour stimuler leur motricité.', 5, 4 );
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Jeu de lancer d''objets', 'Le jeu de lancer d''objets est une activité qui favorise la coordination œil-main et la motricité globale. En lançant des balles ou des anneaux, les enfants améliorent leur précision et leur contrôle moteur.', 'static/assets/images/jeu_lancer_objets.png', 'Marquez des cibles au sol et encouragez les enfants à lancer des balles ou des anneaux pour atteindre les cibles. Variez les distances et les hauteurs pour stimuler différents aspects de la motricité.', 4, );
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Danse libre', 'La danse libre est une activité qui encourage les enfants à bouger librement et à explorer différents mouvements. En dansant sur de la musique, les enfants développent leur coordination et leur équilibre.', 'static/assets/images/danse_libre.png', 'Créez un espace de danse avec de la musique entraînante. Encouragez les enfants à danser librement en explorant des mouvements variés pour stimuler leur motricité.', 6, 4);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Jeu de sauts', 'Le jeu de sauts est une activité physique qui favorise le développement de la motricité et de la coordination. En sautant à cloche-pied, en sautant à la corde ou en faisant des bonds, les enfants améliorent leur agilité.', 'static/assets/images/jeu_sauts.png', 'Organisez des jeux de sauts tels que la corde à sauter, le saut en longueur ou le saut à cloche-pied. Encouragez les enfants à pratiquer différents types de sauts pour renforcer leur motricité.', 7, 4);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Jeu de relais', 'Le jeu de relais est une activité qui encourage la coordination, la vitesse et l''endurance. En courant, en sautant et en transportant des objets, les enfants développent leur motricité globale.', 'static/assets/images/jeu_relais.png', 'Organisez un parcours de relais avec des stations où les enfants doivent effectuer différentes actions telles que courir, sauter et transporter des objets. Divisez-les en équipes pour une compétition amusante.', 8, 4);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Jeu de jonglage', 'Le jeu de jonglage est une activité qui favorise la coordination œil-main et la motricité fine. En jonglant avec des balles ou des foulards, les enfants améliorent leur dextérité et leur contrôle moteur.', 'static/assets/images/jeu_jonglage.png', 'Apprenez aux enfants à jongler avec des balles ou des foulards. Commencez par une seule balle et progressez vers plusieurs balles pour stimuler leur motricité et leur concentration.', 9, 4);

--jeux de société
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('UNO', 'Le UNO est un jeu de cartes classique qui combine stratégie et rapidité. Les joueurs doivent se débarrasser de leurs cartes en associant les couleurs ou les chiffres, tout en utilisant des cartes spéciales pour contrer leurs adversaires.', 'static/assets/images/uno.png', 'Le UNO est un jeu de cartes simple à apprendre. Distribuez 7 cartes à chaque joueur et placez le reste du paquet au centre. Le premier joueur doit poser une carte correspondant à celle du dessus de la pile, soit en couleur, soit en chiffre. Les cartes spéciales ajoutent des rebondissements au jeu.', 6, 5);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Mon premier verger', 'Mon premier verger est une version adaptée du jeu classique HABA « Le verger ». Les enfants doivent cueillir ensemble les fruits avant que le corbeau Théo n’atteigne le verger. Ce jeu favorise la coopération et la motricité des enfants.', 'static/assets/images/mon_premier_verger.png', 'Mon premier verger est un jeu adapté pour les bambins, favorisant la coopération et la motricité. Les enfants apprendront à cueillir les fruits avant que le corbeau Théo n’atteigne le verger, tout en développant leur coordination et leur agilité.', 4, 5);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Doudou', 'Doudou est un jeu pour enfant malin qui invite à mener une enquête en famille pour retrouver le doudou farceur. Ce jeu stimule la réflexion et l''interaction, tout en favorisant la motricité et la coordination.', 'static/assets/images/doudou.png', 'Doudou est un jeu malin qui encourage la réflexion, l''interaction et la motricité des enfants. En famille, menez l''enquête pour retrouver le doudou farceur, stimulant ainsi la coordination et la motricité des enfants.', 5, 5);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Gagne ton papa !', 'Gagne ton papa ! est un jeu pédagogique et amusant axé sur la logique et la géométrie dans l’espace. Ce jeu favorise la motricité fine et la résolution de problèmes, offrant du plaisir pour toute la famille.', 'static/assets/images/gagne_ton_papa.png', 'Gagne ton papa ! est un jeu de logique et de construction qui stimule la motricité fine et la résolution de problèmes. En solo ou à deux, ce jeu offre du plaisir pour toute la famille.', 6, 5);
INSERT INTO activity (title, description, image, tutorial, recommended_age, category_id) VALUES ('Comme des petits singes', 'Comme des petits singes est un jeu d''ambiance coopératif qui encourage les tout-petits à se comporter comme des petits singes. En reproduisant les mouvements des singes pour rire et bouger, les enfants développent leur coordination et leur motricité globale.', 'static/assets/images/comme_des_petits_singes.png', 'Comme des petits singes est un jeu d''ambiance coopératif qui mélange habilement coordination et motricité globale. Les tout-petits sont invités à se transformer en singes malicieux en reproduisant les mouvements des singes pour rire et bouger, favorisant ainsi le développement de leur coordination et de leur motricité globale.', 3, 5);

//Contes
INSERT INTO activity (title, description, image,youtube_link, recommended_age, category_id) VALUES ('Jack et le haricot magique', 'Le conte de "Jack et le haricot magique" est une histoire classique remplie de magie et d''aventure. Les enfants seront captivés par les exploits de Jack et son voyage au sommet du haricot magique.', 'static/assets/images/jack_et_le_haricot_magique.png', 'https://www.youtube.com/watch?v=QoWvdH7jmE8', 5, 6, );
INSERT INTO activity (title, description, image, youtube_link, recommended_age, category_id) VALUES ('La princesse Alva et le dragon de feu qui tousse', 'L''histoire de "La princesse Alva et le dragon de feu qui tousse" est un conte captivant rempli de courage et d''aventure. Les enfants seront transportés dans un monde fantastique en suivant les péripéties de la princesse Alva.', 'static/assets/images/princesse_alva_dragon_feu.png', 'https://www.youtube.com/watch?v=2cjvjTFP7nE', 6, 6);
INSERT INTO activity (title, description, image, youtube_link, recommended_age, category_id) VALUES ('La petite poule rousse', 'Le conte de "La petite poule rousse" est une histoire charmante qui enseigne des leçons de travail d''équipe et de partage. Les enfants seront enchantés par les aventures de la petite poule rousse et ses amis.', 'static/assets/images/petite_poule_rousse.png', 'https://www.youtube.com/watch?v=Zj8FsRGHfI4&pp=ygUSY29udGVzIHBvdXIgZW5mYW50', 4, 6);
INSERT INTO activity (title, description, image, youtube_link, recommended_age, category_id) VALUES ('Cornebidouille', 'Le conte de "Cornebidouille" est une histoire captivante remplie de magie et de courage. Les enfants seront transportés dans un monde fantastique en suivant les aventures du personnage principal face à la redoutable Cornebidouille.', 'static/assets/images/cornebidouille.png', 'https://www.youtube.com/watch?v=Gm_506xbcD4', 5, 6);
INSERT INTO activity (title, description, image, youtube_link, recommended_age, category_id) VALUES ('Le fabuleux voyage de Ferdinand', 'Le conte du "Fabuleux voyage de Ferdinand" est une histoire captivante qui emmène les enfants dans un voyage extraordinaire. Ils seront émerveillés par les aventures de Ferdinand et ses amis.', 'static/assets/images/fabuleux_voyage_ferdinand.png', 'https://www.youtube.com/watch?v=8jrcnAuqAII', 6, 6);
INSERT INTO activity (title, description, image, youtube_link, recommended_age, category_id) VALUES ('La maîtresse qui n''aimait pas les élèves', 'Le conte de "La maîtresse qui n''aimait pas les élèves" est une histoire captivante qui enseigne des leçons de tolérance et d''amitié. Les enfants seront transportés dans un monde merveilleux en suivant les aventures des élèves et leur maîtresse.', 'static/assets/images/maitresse_pas_aime_eleves.png', 'https://www.youtube.com/watch?v=aIc4ea0_XQE', 7, 6);

// INSERT INTO activity (title, image, category_id) VALUES ('Chat_licorne', 'assets/card_pictures/coloring/chat_licorne.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Chat_licorne', 'assets/card_pictures/coloring/chat_licorne2.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Chevalier', 'assets/card_pictures/coloring/chevalier.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Animaux de la ferme', 'assets/card_pictures/coloring/ferme.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Fleur', 'assets/card_pictures/coloring/fleur1.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Licorne', 'assets/card_pictures/coloring/licorne.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Licorne2', 'assets/card_pictures/coloring/licorne2.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Licorne3', 'assets/card_pictures/coloring/licorne3.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Licorne4', 'assets/card_pictures/coloring/licorne4.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala1.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala2.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala3.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala4.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Mandala', 'assets/card_pictures/coloring/mandala5.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Minion', 'assets/card_pictures/coloring/minion.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Minion', 'assets/card_pictures/coloring/minion2.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Mulan', 'assets/card_pictures/coloring/mulan.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Mulan', 'assets/card_pictures/coloring/mulan2.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Pat''patrouille', 'assets/card_pictures/coloring/patrouille.webp', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Pat''patrouille', 'assets/card_pictures/coloring/patrouille3.webp', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Pat''patrouille', 'assets/card_pictures/coloring/patrouille4.webp', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Pat''patrouille', 'assets/card_pictures/coloring/patrouille2.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Peach', 'assets/card_pictures/coloring/peach.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('La reine des neiges', 'assets/card_pictures/coloring/reine.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('La reine des neiges', 'assets/card_pictures/coloring/reine2.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('La reine des neiges', 'assets/card_pictures/coloring/reine3.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('La reine des neiges', 'assets/card_pictures/coloring/reine4.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('La reine des neiges', 'assets/card_pictures/coloring/reine6.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Zootopie', 'assets/card_pictures/coloring/zootopia.jpg', 3);
// INSERT INTO activity (title, image, category_id) VALUES ('Zootopie', 'assets/card_pictures/coloring/zootopia2.jpg', 3);


