# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning DB...'
Garden.destroy_all

puts 'Creating gardens'
garden1 = { name: 'Jardin botanique', city: 'Basse-Terre' }
garden2 = { name: 'Le Jardin d\'Edwige', city: 'Basse-Terre' }

[garden1, garden2].each { |args|
  garden = Garden.create!(args)
  puts "Created #{garden.name}"
}
