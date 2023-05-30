# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# faking users with faker gem
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    location: Faker::Address.city,
    avatar_url: Faker::Avatar.image
  )
end

# faking the skills table
10.times do
  Skill.create(
    name: Faker::Hobby.activity,
    description: Faker::Hipster.paragraph,
    category: ["Language", "Art", "Craftsmanship"].sample
  )
end
