# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Skill.destroy_all

# categories = ['Art', 'Music', 'Craftmanship', 'Language']

Skill.create(name: 'Painting', description: 'Expressive creation of images using various mediums and techniques.', category: 'Art')
Skill.create(name: 'Drumming:', description: 'Producing beats and rhythms using a variety of percussive instruments.', category: 'Music')
Skill.create(name: 'Woodworking:', description: 'Crafting and shaping wood into functional and aesthetic objects.', category: 'Craftmanship')
Skill.create(name: 'Pottery:', description: 'Shaping clay into vessels, sculptures, and decorative objects through wheel throwing or hand-building techniques.', category: 'Craftmanship')
