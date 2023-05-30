# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database'
Skill.destroy_all

# faking users with faker gem
10.times do
  user =User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    location: Faker::Address.city,
    avatar_url: Faker::Avatar.image,
    password: "123456"
  )
end
puts "users created"

# faking the skills table
10.times do
  Skill.create!(
    name: Faker::Hobby.activity,
    description: Faker::Hipster.paragraph,
    category: ['Art', 'Music', 'Craftmanship', 'Language'].sample,
    user: User.find(rand(1..13))
  )
end
puts "skills created"

# # categories = ['Art', 'Music', 'Craftmanship', 'Language']
