#README
Maintenant que les 100 entrées sont créées, affiche le tout en console avec table_print (ne mets pas toutes les colonnes). Balade-toi, en scrollant, dans la liste et repère 10 films que tu trouves bien funs (noms improbables, etc.). Pour chacun de ces films tu vas faire comme si tu venais de les visionner :

- Retrouve-les soit via leur id avec Movie.find ou via leur nom avec Movie.find_by(name: "xxx") puis affecte-les à une variable du genre mon_film.

 	```
 	movie_1 = Movie.find_by(name: 'Titan IX')
    movie_2 = Movie.find_by(name: 'Yellow Brain')
 	movie_3 = Movie.find_by(name: 'Dark Elektra')
 	movie_4 = Movie.find_by(name: 'Mr Hope Summers')
 	movie_5 = Movie.find_by(name: 'Green Scorpion')
 	movie_6 = Movie.find_by(name: 'Krypto')
 	movie_7 = Movie.find_by(name: 'Zoom')
 	movie_8 = Movie.find_by(name: 'Darkstar')
 	movie_9 = Movie.find_by(name: 'Luna')
 	movie_10 = Movie.find_by(name: 'Pyro')
 	
- Passe alors leur already_seen en true.

 	```
 	movie_1.update(already_seen: true)
 	movie_2.update(already_seen: true)
 	movie_3.update(already_seen: true)
 	movie_4.update(already_seen: true)
 	movie_5.update(already_seen: true)
 	movie_6.update(already_seen: true)
 	movie_7.update(already_seen: true)
 	movie_8.update(already_seen: true)
 	movie_9.update(already_seen: true)
 	movie_10.update(already_seen: true)
 	
- Donne leur une note dans my_rating.

 	```
 	movie_1.update(my_rating: rand(0..5))
 	movie_2.update(my_rating: rand(0..5))
 	movie_3.update(my_rating: rand(0..5))
 	movie_4.update(my_rating: rand(0..5))
 	movie_5.update(my_rating: rand(0..5))
 	movie_6.update(my_rating: rand(0..5))
 	movie_7.update(my_rating: rand(0..5))
 	movie_8.update(my_rating: rand(0..5))
 	movie_9.update(my_rating: rand(0..5))
 	movie_10.update(my_rating: rand(0..5))