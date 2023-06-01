# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

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
painting_text = "My artistic prowess is unparalleled, with a brush in hand, I create masterpieces that redefine the concept of avocado still life. My paintings have been featured in underground galleries and trendy coffee shops."

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685617485/painting3_ybk69u.jpg")
painting = Skill.create!(
  name: "Oil Painting",
  description: painting_text,
  category: "Art",
  user: User.find(rand(2..11))
)
painting.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
painting.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685620781/dj2_ra9rob.jpg")
dj = Skill.create!(
  name: "Mixing Beats",
  description: "I am the master of the turntables, mixing beats that transport you to a realm where Berlin's techno scene meets the roaring '20s. My music production skills are so hot, they can fry an organic egg.",
  category: "Music",
  user: User.find(rand(2..11))
)
dj.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
dj.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685617048/pottery1_sy24eo.jpg")
pottery_paul = Skill.create!(
  name: "Harry Potter",
  description: "In the mystical world of sexy pottery, I cast spells on clay, transforming it into curvaceous masterpieces. My magical touch brings Harry Potter-themed sculptures to life, celebrating body positivity one sensual vase at a time.",
  category: "Craftmanship",
  user: User.find(rand(2..11))
)
pottery_paul.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pottery_paul.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685617917/craftinf_iqxgbd.jpg")
crafting = Skill.create!(
  name: "Crafting Hipster Stuff",
  description: "Embracing my inner wild west enthusiast, I'm now handcrafting cowboy boots candle holders for the modern hipster cowboy. These rustic yet ironic creations bring a touch of desert charm to your bohemian living space. Saddle up, partner!",
  category: "Craftmanship",
  user: User.find(rand(2..11))
)
crafting.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
crafting.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685617243/pottery2_snfqwp.jpg")
pottery_lisa = Skill.create!(
  name: "Pottery",
  description: "I have mastered the art of pottery, molding clay into exquisite shapes. My ceramic creations are so hipster-chic that they make vintage vinyl records jealous. Just don't ask me to make a matching set of bowls.",
  category: "Craftmanship",
  user: User.find(rand(2..11))
)
pottery_lisa.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pottery_lisa.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685617547/painting4_fnfdzw.jpg")
acryl_painting = Skill.create!(
  name: "Acryl Painting",
  description: painting_text,
  category: "Art",
  user: User.find(rand(2..11))
)
acryl_painting.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
acryl_painting.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685618574/sculpting_bblqug.jpg")
potteryy = Skill.create!(
  name: "Sculpting / Pottery",
  description: "I have mastered the art of pottery, molding clay into exquisite shapes. My ceramic creations are so hipster-chic that they make vintage vinyl records jealous. Just don't ask me to make a matching set of bowls.",
  category: "Craftmanship",
  user: User.find(rand(2..11))
)
potteryy.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
potteryy.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685616732/bodybuilding_pfn3ty.jpg")
bodybuilder = Skill.create!(
  name: "Berlin Bodybuilder Boy",
  description: "As an avid bodybuilder, I can confidently flex my muscles and open any jar of pickles with ease. My sculpted biceps are perfect for reaching the highest shelf in the organic kombucha section.",
  category: "Sports",
  user: User.find(rand(2..11))
)
bodybuilder.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bodybuilder.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685617848/drawing_mmbycn.jpg")
hand_painting = Skill.create!(
  name: "Drawing Hands Fetish",
  description: painting_text,
  category: "Art",
  user: User.find(rand(2..11))
)
hand_painting.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
hand_painting.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685618108/knitting_o09vgg.jpg")
knitting = Skill.create!(
  name: "Knitting for two",
  description: "With my expert knitting skills, I can fashion the trendiest scarves and beanies. I've even knitted a cozy sweater for my pet cactus. It's the ultimate way to keep your succulents warm during Berlin winters.",
  category: "Craftmanship",
  user: User.find(rand(2..11))
)
knitting.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
knitting.save


file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685618660/gardening_ovwwzs.jpg")
gardening = Skill.create!(
  name: "Urban Gardening",
  description: " I've transformed my urban rooftop into a veritable jungle of succulents, moss walls, and vintage watering cans. My green thumb is so legendary that plants offer themselves willingly for a trim.",
  category: "Craftmanship",
  user: User.find(rand(2..11))
)
gardening.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
gardening.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685615603/pottery3_gxbrub.jpg")
pottery_organic = Skill.create!(
  name: "Organic Pottery",
  description: "I have mastered the art of pottery, molding clay into exquisite shapes. My ceramic creations are so hipster-chic that they make vintage vinyl records jealous. Just don't ask me to make a matching set of bowls.",
  category: "Craftmanship",
  user: User.find(rand(2..11))
)
pottery_organic.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pottery_organic.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685618195/knitting1_z0h6ui.jpg")
knitting_tube = Skill.create!(
  name: "Knitting Tubes",
  description: "With my expert knitting skills, I can fashion the trendiest scarves and beanies. I've even knitted a cozy sweater for my pet cactus. It's the ultimate way to keep your succulents warm during Berlin winters.",
  category: "Craftmanship",
  user: User.find(rand(2..11))
)
knitting_tube.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
knitting_tube.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685622123/pottery_ntm412.jpg")
pottery_dog = Skill.create!(
  name: "Pottery with my Puppy",
  description: "I have mastered the art of pottery, molding clay into exquisite shapes. My ceramic creations are so hipster-chic that they make vintage vinyl records jealous. Just don't ask me to make a matching set of bowls.",
  category: "Craftmanship",
  user: User.find(rand(2..11))
)
pottery_dog.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pottery_dog.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685618246/tattooing_dvh9ai.jpg")
tattooing = Skill.create!(
  name: "Self-taught tattoo artist",
  description: "As a self-taught tattoo artist, my needlework is like a canvas of irony. From avocado toast-inspired designs to minimalist kale tattoos, my ink has become a symbol of hipster enlightenment. Don't worry, I always use organic ink.",
  category: "Art",
  user: User.find(rand(2..11))
)
tattooing.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
tattooing.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685618498/kanooing_dzc3ye.jpg")
kanooing = Skill.create!(
  name: "Kanooing",
  description: "I've paddled through the urban canals of Berlin in my vintage kanoo, effortlessly maneuvering through traffic jams of floating bicycles. No hipster brunch is complete without a waterborne commute on my sustainable vessel.",
  category: "Sports",
  user: User.find(rand(2..11))
)
kanooing.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kanooing.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685621345/hoola_vuvert.jpg")
hoola = Skill.create!(
  name: "Hips like Jesus",
  description: "I spin the hoop with divine precision, transcending earthly limits. With every rotation, I turn water into wine, creating a vortex of joy and transcendence. Follow my heavenly hips and experience the miracles of hoolahooping salvation.",
  category: "Sports",
  user: User.find(rand(2..11))
)
hoola.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
hoola.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685620547/piano_ppzkga.jpg")
piano = Skill.create!(
  name: "Playing Piano",
  description: "With nimble fingers dancing across the ivory keys, I whisk you away on a melodic journey. Each note I strike holds the power to stir emotions and ignite imaginations. Let the harmonies flow and the melodies transport you to a world where music reigns supreme.",
  category: "Music",
  user: User.find(rand(2..11))
)
piano.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
piano.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685620992/skating_xyezze.jpg")
skating = Skill.create!(
  name: "Skateboarding",
  description: "Gliding through the concrete jungle, my skateboard becomes an extension of my rebellious spirit. I ride the streets with effortless grace, defying gravity and embracing the thrill. From kickflips to grinds, each trick is a testament to the artistry and freedom found on four wheels. Jump on board and let's shred the urban landscape together, leaving a trail of stoke and asphalt dreams in our wake.",
  category: "Sports",
  user: User.find(rand(2..11))
)
skating.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
skating.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685620648/poledancing_m4ezk0.jpg")
poledancer = Skill.create!(
  name: "Poledancing Poodle",
  description: "I've gracefully twirled around poles like a mustached ballerina, mixing sensuality and athleticism. My pole dance performances are a fusion of organic kaleidoscope visuals and gluten-free fire-breathing techniques.",
  category: "Sports",
  user: User.find(rand(2..11))
)
poledancer.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
poledancer.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685621210/surfing1_byz8uq.jpg")
surfing = Skill.create!(
  name: "Surfing like a God",
  description: "As I ride the majestic waves, I become one with the ocean, an aquatic deity in human form. The swell bows before my mastery, granting me endless barrels and thrilling rides. With every graceful maneuver, I am the embodiment of flow and awe-inspiring style. From sunrise to sunset, I conquer the surf with the confidence and grace of a deity. Join me on this divine journey, where the waves become our playground and the ocean answers our call.",
  category: "Sports",
  user: User.find(rand(2..11))
)
surfing.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
surfing.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685618407/haircut_td2wbf.jpg")
hair = Skill.create!(
  name: "Cutting Hair",
  description: "With my trusty pair of artisanal scissors, I can give you the most bespoke haircut in town. Whether you want the man bun fade or the retro mullet revival, I'll make you look like a vintage poster boy.",
  category: "Craftmanship",
  user: User.find(rand(2..11))
)
hair.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
hair.save


file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685620915/barista_wefakc.jpg")
coffee = Skill.create!(
  name: "Coffee Connoisseur",
  description: "As a coffee connoisseur, I've brewed espresso so strong that it can awaken even the sleepiest hipster. My latte art is a mesmerizing blend of abstract designs and vintage typewriters. Every sip is a caffeinated revelation.",
  category: "Art",
  user: User.find(rand(2..11))
)
coffee.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
coffee.save

file = URI.open("https://res.cloudinary.com/dnx6ly8vl/image/upload/v1685622250/painting2_qdvkna.jpg")
painting_loft = Skill.create!(
  name: "Painting Canvas",
  description: "My artistic prowess is unparalleled, with a brush in hand, I create masterpieces that redefine the concept of avocado still life. My paintings have been featured in underground galleries and trendy coffee shops.",
  category: "Art",
  user: User.find(rand(2..11))
)
painting_loft.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
painting_loft.save



# 10.times do
#   Skill.create!(
#     name: Faker::Hobby.activity,
#     description: Faker::Hipster.paragraph,
#     category: ['Art', 'Music', 'Craftmanship', 'Language'].sample,
#     user: User.find(rand(1..10))
#   )
# end
puts "skills created"

# # categories = ['Art', 'Music', 'Craftmanship', 'Language']
