# This file is used to populate the database with initial data.
# db/seeds.rb

# Clear existing data
puts "Clearing existing data..."
Animal.destroy_all

puts "Seeding animals..."

# Seed data for Lion
lion = Animal.create(
  name: "Lion",
  animal_type: "Mammal",
  points: 5,
  description: "The lion is a large carnivorous feline of the Panthera genus. It is known for its majestic mane and powerful roar.",
  sound: Rails.root.join('public', 'sounds', 'ion_roar.mp3'),
  spoor: ActionController::Base.helpers.asset_path("Lion_paw.png"),
  image: ActionController::Base.helpers.asset_path("lion_thumbnail.png") ,
  diet: "Carnivore",
  lifespan: "10-14 years in the wild",
  conservation_status: "Vulnerable",
  behaviour: "Social animals, live in groups called prides",
  known_habitat: "Savannahs, grasslands, and open woodlands"
)

kruger = Park.create(
  name: "Kruger National Park",
  location: "Kruger Park, South Africa",
  description: "Kruger National Park is one of the largest game reserves in Africa. It covers an area of 19,485 square kilometres in the provinces of Limpopo and Mpumalanga in northeastern South Africa, and extends 360 kilometres from north to south and 65 kilometres from east to west. South Africa's first National Park containing significant numbers of all of the big 5 game species."
)

puts "Seeding completed."
