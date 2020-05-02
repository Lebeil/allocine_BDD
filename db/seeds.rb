# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Movie.destroy_all

100.times do |i|
  new_movie = Movie.new
  # Le nom de chaque film doit être plausible
  new_movie.name = Faker::Book.unique.title
  # L'année doit être comprise entre 1900 et 2020
  new_movie.year = rand(1900..2020)
  # Le genre doit être l'une des valeurs suivantes : ["action", "horreur", "comédie", "drame"]
  new_movie.genre = ["action", "horreur", "comédie", "drame"].sample
  # Chaque synopsis doit être composé d'au moins 10 mots
  new_movie.synopsis = Faker::Lorem.sentence(word_count: 10, supplemental: true, random_words_to_add: 10)
  # Le réalisateur doit être un nom plausible
  new_movie.director = Faker::Book.author
  # La note float Allociné doit être aléatoire et comprise entre 0 et 5.
  new_movie.allocine_rating = rand(0.0..5.0).round(1)
  new_movie.already_seen = false
  new_movie.save

  puts "#{i+1} movies created"
end