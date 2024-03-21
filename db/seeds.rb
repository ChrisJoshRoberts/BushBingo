# This file is used to populate the database with initial data.
# db/seeds.rb

# Clear existing data
puts "Clearing existing data..."
Animal.destroy_all
Park.destroy_all
User.destroy_all

puts "Seeding animals..."

# Seed data for Lion
lion = Animal.create(
  name: "Lion",
  animal_type: "Mammal",
  points: 5,
  description: "The lion is a large carnivorous feline of the Panthera genus. It is known for its majestic mane and powerful roar.",
  sound: "sounds/lion_roar.mp3",
  spoor: ActionController::Base.helpers.asset_path("lion_spoor.png"),
  image: ActionController::Base.helpers.asset_path("lion_icon.png") ,
  diet: "Carnivore",
  lifespan: "10-14 years in the wild",
  conservation_status: "Vulnerable",
  behaviour: "Social animals, live in groups called prides",
  known_habitat: "Savannahs, grasslands, and open woodlands",
  photos: [
    ActionController::Base.helpers.asset_path("lion_1.png"),
    ActionController::Base.helpers.asset_path("lion_2.png"),
    ActionController::Base.helpers.asset_path("lion_3.png"),
    ActionController::Base.helpers.asset_path("lion_4.png"),
    ActionController::Base.helpers.asset_path("lion_5.png"),
    ActionController::Base.helpers.asset_path("lion_6.png")
  ]
)

elephant = Animal.create(
  name: "African Elephant",
  animal_type: "Mammal",
  points: 3,
  description: "The African elephant is the largest land animal on Earth. It is known for its long trunk, large ears, and tusks.",
  sound: "sounds/elephant_trumpet.mp3",
  spoor: ActionController::Base.helpers.asset_path("elephant_spoor.png"),
  image: ActionController::Base.helpers.asset_path("elephant_icon.png"),
  diet: "Herbivore",
  lifespan: "60-70 years in the wild",
  conservation_status: "Vulnerable",
  behaviour: "Social animals, live in herds led by a matriarch",
  known_habitat: "Savannahs, forests, and grasslands",
  photos: [
    ActionController::Base.helpers.asset_path("elephant_1.png"),
    ActionController::Base.helpers.asset_path("elephant_2.png"),
    ActionController::Base.helpers.asset_path("elephant_3.png"),
    ActionController::Base.helpers.asset_path("elephant_4.png"),
    ActionController::Base.helpers.asset_path("elephant-5.png"),
    ActionController::Base.helpers.asset_path("elephant_6.png")
  ]
)
leopard = Animal.create(
  name: "Leopard",
  animal_type: "Mammal",
  points: 7,
  description: "The leopard is a large and powerful big cat known for its distinctive spotted coat and stealthy hunting abilities.",
  sound: "sounds/leopard_roar.mp3",
  spoor: ActionController::Base.helpers.asset_path("leopard_spoor.png"),
  image: ActionController::Base.helpers.asset_path("leopard_icon.png"),
  diet: "Carnivore",
  lifespan: "12-17 years in the wild",
  conservation_status: "Near Threatened",
  behaviour: "Solitary animals, excellent climbers and swimmers",
  known_habitat: "Forests, savannahs, grasslands, and mountains",
  photos: [
    ActionController::Base.helpers.asset_path("leopard_1.png"),
    ActionController::Base.helpers.asset_path("leopard_2.png"),
    ActionController::Base.helpers.asset_path("leopard_3.png"),
    ActionController::Base.helpers.asset_path("leopard_4.png"),
    ActionController::Base.helpers.asset_path("leopard_6-1.png"),
    ActionController::Base.helpers.asset_path("leopard_6.png")
  ]
)

buffalo = Animal.create(
  name: "Buffalo",
  animal_type: "Mammal",
  points: 6,
  description: "The African buffalo is a large herbivore with distinctive curved horns. It is known for its aggressive behavior when threatened.",
  sound: "sounds/buffalo_grunt.mp3",
  spoor: ActionController::Base.helpers.asset_path("buffalo_spoor.png"),
  image: ActionController::Base.helpers.asset_path("buffalo_icon.png"),
  diet: "Herbivore",
  lifespan: "15-25 years in the wild",
  conservation_status: "Least Concern",
  behaviour: "Social animals, live in herds dominated by females",
  known_habitat: "Savannahs, grasslands, and forests",
  photos: [
    ActionController::Base.helpers.asset_path("buffalo_1.png"),
    ActionController::Base.helpers.asset_path("buffalo_2.png"),
    ActionController::Base.helpers.asset_path("buffalo_3.png"),
    ActionController::Base.helpers.asset_path("buffalo_4.png"),
    ActionController::Base.helpers.asset_path("buffalo_5.png"),
    ActionController::Base.helpers.asset_path("buffalo_6.png")
  ]
)

rhino = Animal.create(
  name: "Rhinoceros",
  animal_type: "Mammal",
  points: 8,
  description: "The rhinoceros is a large herbivorous mammal known for its thick skin and one or more horns on its nose.",
  sound: "sounds/rhinoceros_grunt.mp3",
  spoor: ActionController::Base.helpers.asset_path("rhino_spoor.png"),
  image: ActionController::Base.helpers.asset_path("rhino_icon.png"),
  diet: "Herbivore",
  lifespan: "35-50 years in the wild",
  conservation_status: "Vulnerable",
  behaviour: "Solitary animals, have poor eyesight but keen sense of smell and hearing",
  known_habitat: "Grasslands, savannahs, and forests",
  photos: [
    ActionController::Base.helpers.asset_path("rhino_1.png"),
    ActionController::Base.helpers.asset_path("rhino_2.png"),
    ActionController::Base.helpers.asset_path("rhino_3.png"),
    ActionController::Base.helpers.asset_path("rhino_4.png"),
    ActionController::Base.helpers.asset_path("rhino_5.png"),
    ActionController::Base.helpers.asset_path("rhino_6.png")
  ]
)

cheetah = Animal.create(
  name: "Cheetah",
  animal_type: "Mammal",
  points: 8,
  description: "The cheetah is the fastest land animal, capable of reaching speeds up to 70 mph in short bursts.",
  sound: "sounds/cheetah_yelp.mp3",
  spoor: ActionController::Base.helpers.asset_path("cheetah_spoor.png"),
  image: ActionController::Base.helpers.asset_path("cheetah_icon.png"),
  diet: "Carnivore",
  lifespan: "10-12 years in the wild",
  conservation_status: "Vulnerable",
  behaviour: "Solitary animals, hunt during the day",
  known_habitat: "Grasslands, savannahs, and open woodlands",
  photos: [
    ActionController::Base.helpers.asset_path("cheetah_1.png"),
    ActionController::Base.helpers.asset_path("cheetah_2.png"),
    ActionController::Base.helpers.asset_path("cheetah_3.png"),
    ActionController::Base.helpers.asset_path("cheetah_4.png"),
    ActionController::Base.helpers.asset_path("cheetah_5.png"),
    ActionController::Base.helpers.asset_path("cheetah_6.png")
  ]
)

# Seed data for Giraffe
giraffe = Animal.create(
  name: "Giraffe",
  animal_type: "Mammal",
  points: 7,
  description: "The giraffe is the tallest living terrestrial animal, with long legs and a long neck.",
  sound: "sounds/Giraffe_sounds.mp3",
  spoor: ActionController::Base.helpers.asset_path("giraffe_spoor.png"),
  image: ActionController::Base.helpers.asset_path("giraffe_icon.png"),
  diet: "Herbivore",
  lifespan: "20-25 years in the wild",
  conservation_status: "Vulnerable",
  behaviour: "Social animals, live in loose groups called towers",
  known_habitat: "Open woodlands, savannahs, and grasslands",
  photos: [
    ActionController::Base.helpers.asset_path("giraffe_1.png"),
    ActionController::Base.helpers.asset_path("giraffe_2.png"),
    ActionController::Base.helpers.asset_path("giraffe_3.png"),
    ActionController::Base.helpers.asset_path("giraffe_4.png"),
    ActionController::Base.helpers.asset_path("giraffe_5.png"),
    ActionController::Base.helpers.asset_path("giraffe_6.png")
  ]
)

# Seed data for Hippopotamus
hippopotamus = Animal.create(
  name: "Hippopotamus",
  animal_type: "Mammal",
  points: 6,
  description: "The hippopotamus, or hippo, is a large, mostly herbivorous mammal known for its aggressive behavior.",
  sound: "sounds/Hippo_Sounds.mp3",
  spoor: ActionController::Base.helpers.asset_path("hippo_spoor.png"),
  image: ActionController::Base.helpers.asset_path("hippo_icon.png"),
  diet: "Herbivore",
  lifespan: "40-50 years in the wild",
  conservation_status: "Vulnerable",
  behaviour: "Semi-aquatic animals, spend most of their time in water",
  known_habitat: "Rivers, lakes, and swamps",
  photos: [
    ActionController::Base.helpers.asset_path("hippo_1.png"),
    ActionController::Base.helpers.asset_path("hippo_2.png"),
    ActionController::Base.helpers.asset_path("hippo_3.png"),
    ActionController::Base.helpers.asset_path("hippo_4.png"),
    ActionController::Base.helpers.asset_path("hippo_5.png"),
    ActionController::Base.helpers.asset_path("hippo_6.png")
  ]
)

# Seed data for Crocodile
crocodile = Animal.create(
  name: "Crocodile",
  animal_type: "Reptile",
  points: 6,
  description: "The crocodile is a large aquatic reptile known for its powerful jaws and ability to ambush prey.",
  sound: "sounds/Crocodile_sounds.mp3",
  spoor: ActionController::Base.helpers.asset_path("croc_spoor.png"),
  image: ActionController::Base.helpers.asset_path("croc_icon.png"),
  diet: "Carnivore",
  lifespan: "70-100 years in the wild",
  conservation_status: "Vulnerable",
  behaviour: "Ambush predators, spend most of their time submerged in water",
  known_habitat: "Rivers, lakes, and estuaries",
  photos: [
    ActionController::Base.helpers.asset_path("croc_1.png"),
    ActionController::Base.helpers.asset_path("croc_2.png"),
    ActionController::Base.helpers.asset_path("croc_3.png"),
    ActionController::Base.helpers.asset_path("croc_4.png"),
    ActionController::Base.helpers.asset_path("croc_5.png"),
    ActionController::Base.helpers.asset_path("croc_6.png")
  ]
)

# Seed data for Zebra
zebra = Animal.create(
  name: "Zebra",
  animal_type: "Mammal",
  points: 6,
  description: "The zebra is a horse-like mammal known for its distinctive black and white stripes.",
  sound: "sounds/Zebra_sounds.mp3",
  spoor: ActionController::Base.helpers.asset_path("zebra_spoor.png"),
  image: ActionController::Base.helpers.asset_path("zebra_icon.png"),
  diet: "Herbivore",
  lifespan: "20-30 years in the wild",
  conservation_status: "Near Threatened",
  behaviour: "Social animals, live in groups called herds",
  known_habitat: "Grasslands, savannahs, and open woodlands",
  photos: [
    ActionController::Base.helpers.asset_path("zebra_1.png"),
    ActionController::Base.helpers.asset_path("zebra_2.png"),
    ActionController::Base.helpers.asset_path("zebra_3.png"),
    ActionController::Base.helpers.asset_path("zebra_4.png"),
    ActionController::Base.helpers.asset_path("zebra_5.png"),
    ActionController::Base.helpers.asset_path("zebra_6.png")
  ]
)
# STILL TODO ---------------------------------------------------------------------------------------------------------------------------
# # Seed data for Wildebeest
# wildebeest = Animal.create(
#   name: "Wildebeest",
#   animal_type: "Mammal",
#   points: 6,
#   description: "The wildebeest, also known as the gnu, is a large antelope with a distinctive appearance and migratory behavior.",
#   sound: "sounds/Wildebeest_Sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Herbivore",
#   lifespan: "15-20 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Migratory animals, undertake long-distance migrations in search of food and water",
#   known_habitat: "Grasslands, savannahs, and open woodlands"
# )

# # Seed data for Hyena
# hyena = Animal.create(
#   name: "Hyena",
#   animal_type: "Mammal",
#   points: 6,
#   description: "Hyenas are carnivorous mammals known for their scavenging behavior and distinctive laughing vocalizations.",
#   sound: "sounds/Hyena_Laugh.mp3",
#   spoor: ,
#   image: ,
#   diet: "Carnivore",
#   lifespan: "12-15 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Social animals, live in clans led by females",
#   known_habitat: "Savannahs, grasslands, and forests"
# )

# # Seed data for African Wild Dog
# african_wild_dog = Animal.create(
#   name: "African Wild Dog",
#   animal_type: "Mammal",
#   points: 8,
#   description: "The African wild dog, also known as the painted wolf, is a highly social carnivore known for its cooperative hunting behavior.",
#   sound: "sounds/African_wild_dog_sounds",
#   spoor: ,
#   image: ,
#   diet: "Carnivore",
#   lifespan: "10-12 years in the wild",
#   conservation_status: "Endangered",
#   behaviour: "Highly social animals, live in packs led by an alpha pair",
#   known_habitat: "Savannahs, grasslands, and woodlands"
# )

# # Seed data for Warthog
# warthog = Animal.create(
#   name: "Warthog",
#   animal_type: "Mammal",
#   points: 5,
#   description: "The warthog is a wild pig known for its distinctive facial warts and tusks.",
#   sound: "sounds/Warthog_sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Herbivore",
#   lifespan: "10-15 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Social animals, live in groups called sounders",
#   known_habitat: "Savannahs, grasslands, and woodlands"
# )

# # Seed data for Baboon
# baboon = Animal.create(
#   name: "Baboon",
#   animal_type: "Mammal",
#   points: 5,
#   description: "The baboon is a primate known for its dog-like muzzle and distinctive long, curved canine teeth.",
#   sound: "sounds/Baboon_sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Omnivore",
#   lifespan: "20-30 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Social animals, live in troops led by dominant males",
#   known_habitat: "Various habitats including forests, savannahs, and cliffs"
# )

# # Seed data for Kudu
# kudu = Animal.create(
#   name: "Kudu",
#   animal_type: "Mammal",
#   points: 6,
#   description: "The kudu is a large antelope with impressive spiral horns and distinctive white stripes on its body.",
#   sound: "sounds/Kudu_sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Herbivore",
#   lifespan: "8-12 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Solitary or form small groups, males engage in sparring contests for dominance",
#   known_habitat: "Woodlands, savannahs, and scrub forests"
# )

# # Seed data for Impala
# impala = Animal.create(
#   name: "Impala",
#   animal_type: "Mammal",
#   points: 5,
#   description: "The impala is a medium-sized antelope known for its leaping ability and distinctive markings.",
#   sound: "sounds/Kudu_sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Herbivore",
#   lifespan: "10-15 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Social animals, form large herds",
#   known_habitat: "Savannahs, woodlands, and grasslands"
# )

# # Seed data for Bushbuck
# bushbuck = Animal.create(
#   name: "Bushbuck",
#   animal_type: "Mammal",
#   points: 5,
#   description: "The bushbuck is a small to medium-sized antelope known for its secretive nature and distinctive markings.",
#   sound: "sounds/Kudu_sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Herbivore",
#   lifespan: "10-15 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Solitary or form small groups, agile climbers and swimmers",
#   known_habitat: "Forest edges, riverine forests, and dense bushland"
# )

# # Seed data for Steenbok
# steenbok = Animal.create(
#   name: "Steenbok",
#   animal_type: "Mammal",
#   points: 4,
#   description: "The steenbok is a small antelope known for its territorial behavior and distinctive upright posture.",
#   sound: "sounds/Kudu_sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Herbivore",
#   lifespan: "6-8 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Solitary animals, mark their territories with dung middens",
#   known_habitat: "Grasslands, savannahs, and semi-desert areas"
# )

# # Seed data for Duiker
# duiker = Animal.create(
#   name: "Duiker",
#   animal_type: "Mammal",
#   points: 4,
#   description: "The duiker is a small to medium-sized antelope known for its secretive behavior and ability to disappear into dense vegetation.",
#   sound: "sounds/Kudu_sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Herbivore",
#   lifespan: "5-10 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Mostly solitary, active during early morning and late afternoon",
#   known_habitat: "Forests, savannahs, and bushland"
# )

# # Seed data for Sable Antelope
# sable_antelope = Animal.create(
#   name: "Sable Antelope",
#   animal_type: "Mammal",
#   points: 7,
#   description: "The sable antelope is a large and striking antelope species known for its long, curved horns and dark-colored coat.",
#   sound: "sounds/Kudu_sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Herbivore",
#   lifespan: "16-20 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Social animals, form herds led by dominant males",
#   known_habitat: "Woodlands, savannahs, and grasslands"
# )

# # Seed data for Roan Antelope
# roan_antelope = Animal.create(
#   name: "Roan Antelope",
#   animal_type: "Mammal",
#   points: 6,
#   description: "The roan antelope is a large and heavily built antelope known for its distinct facial markings and long, sweeping horns.",
#   sound: "sounds/Kudu_sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Herbivore",
#   lifespan: "10-15 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Form small herds led by dominant males",
#   known_habitat: "Savannahs, woodlands, and grasslands"
# )

# # Seed data for Nyala
# nyala = Animal.create(
#   name: "Nyala",
#   animal_type: "Mammal",
#   points: 6,
#   description: "The nyala is a medium-sized antelope known for its striking markings, spiral horns, and graceful appearance.",
#   sound: "sounds/Kudu_sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Herbivore",
#   lifespan: "10-12 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Mostly solitary or form small groups, territorial animals",
#   known_habitat: "Woodlands, thickets, and riverine forests"
# )

# springbok_animal = Animal.create(
#   name: "Springbok",
#   animal_type: "Mammal",
#   points: 5,
#   description: "The springbok is a medium-sized antelope known for its distinctive jumping behavior, called pronking, where it leaps into the air with an arched back.",
#   sound: "sounds/Kudu_sounds.mp3",
#   spoor: ,
#   image: ,
#   diet: "Herbivore",
#   lifespan: "10-12 years in the wild",
#   conservation_status: "Least Concern",
#   behaviour: "Social animals, form herds and display territorial behavior during mating season",
#   known_habitat: "Grasslands, savannahs, and semi-deserts"
# )
pangolin = Animal.create(
  name: "Pangolin",
  animal_type: "Mammal",
  points: 100,
  description: "The pangolin is a unique mammal covered in scales, resembling a walking pinecone. It is known for its ability to roll into a ball when threatened.",
  sound: "sounds/pangolin_hiss.mp3",
  spoor: ActionController::Base.helpers.asset_path("pangolin_spoor.png"),
  image: ActionController::Base.helpers.asset_path("pango_icon.png"),
  diet: "Insectivore",
  lifespan: "Up to 20 years in the wild",
  conservation_status: "Critically Endangered",
  behaviour: "Solitary and nocturnal, excellent climbers",
  known_habitat: "Forests, grasslands, and savannahs",
  photos: [
    ActionController::Base.helpers.asset_path("pango_1.png"),
    ActionController::Base.helpers.asset_path("pango_2.png"),
    ActionController::Base.helpers.asset_path("pango_3.png"),
    ActionController::Base.helpers.asset_path("pango_4.png"),
    ActionController::Base.helpers.asset_path("pango_5.png"),
    ActionController::Base.helpers.asset_path("pango_6.png")
  ]
)


#Creating the parks
kruger = Park.create(
  name: "Kruger National Park",
  location: "Limpopo, South Africa",
  description: "Kruger National Park is one of the largest game reserves in Africa. It covers an area of 19,485 square kilometres in the provinces of Limpopo and Mpumalanga in northeastern South Africa, and extends 360 kilometres from north to south and 65 kilometres from east to west. South Africa's first National Park containing significant numbers of all of the big 5 game species.",
  image: "kruger.png",
  latitude:-23.988139724183007,
  longitude: 31.554772383487975
)

addo = Park.create(
  name: "Addo Elephant National Park",
  location: "Eastern Cape, South Africa",
  description: "Addo Elephant National Park is a diverse wildlife conservation park situated close to Port Elizabeth in South Africa. It is home to the Big Seven (elephant, rhinoceros, lion, buffalo, leopard, whale, and great white shark).",
  image: "addo.png",
  latitude: -33.30827321310347,
  longitude: 25.542579195389592,

)

kgalagadi = Park.create(
  name: "Kgalagadi Transfrontier Park",
  location: "Northern Cape, South Africa",
  description: "Kgalagadi Transfrontier Park is a vast wildlife preserve in the Kalahari Desert region of Botswana and South Africa, bordering Namibia to the west. It's characterized by red dunes and dry rivers. Wildlife includes migrating herds of wildebeest and springbok, plus predators like raptors and black-maned Kalahari lions.",
  image: "kgalagadi.png",
  latitude: -25.155048454031675,
  longitude: 20.979934708818828


)

hluhluwe = Park.create(
  name: "Hluhluwe-iMfolozi Park",
  location: "KwaZulu-Natal, South Africa",
  description: "Hluhluwe-iMfolozi Park is the oldest proclaimed nature reserve in Africa. It is known for its rich wildlife and conservation efforts, particularly in the preservation of the white rhinoceros.",
  image: "hluhluwe.png"
)

tsitsikamma = Park.create(
  name: "Tsitsikamma National Park",
  location: "Eastern Cape, South Africa",
  description: "Tsitsikamma National Park is a protected area on the Garden Route in the Western and Eastern Cape provinces of South Africa. It is well-known for its indigenous forests, dramatic coastline, and marine reserve.",
  image: "tsitsikamma.png",
  latitude: -34.01166280330447,
  longitude: 24.01651685404707
)

mapungubwe = Park.create(
  name: "Mapungubwe National Park",
  location: "Limpopo, South Africa",
  description: "Mapungubwe National Park is located at the confluence of the Limpopo and Shashe Rivers in the Limpopo Province of South Africa. It is renowned for its cultural heritage, including the ancient Mapungubwe Kingdom and archaeological sites.",
  image: "mapungubwe.png",
  latitude: -22.221789748731126,
  longitude: 29.347269096937218

)

marakele = Park.create(
  name: "Marakele National Park",
  location: "Limpopo, South Africa",
  description: "Marakele National Park is a wildlife reserve in the Waterberg Mountains of South Africa's Limpopo Province. It is home to a variety of wildlife, including the Big Five, as well as bird species.",
  image: "marakele.png",
  latitude: -24.417610317331594,
  longitude: 27.602249254662137
)

augrabies = Park.create(
  name: "Augrabies Falls National Park",
  location: "Northern Cape, South Africa",
  description: "Augrabies Falls National Park is located in the Northern Cape province of South Africa. It is named after the Augrabies Falls, which is a spectacular waterfall on the Orange River.",
  image: "augrabies.png",
  latitude: -28.592270392352244,
  longitude: 20.33638842171934
)

golden_gate = Park.create(
  name: "Golden Gate Highlands National Park",
  location: "Free State, South Africa",
  description: "Golden Gate Highlands National Park is located in the Free State province of South Africa. It is known for its stunning sandstone formations, expansive grasslands, and rich biodiversity.",
  image: "golden_gate.png",
  latitude: -28.503095097085573,
  longitude: 28.585282123395018
)
all_animals = Animal.all

kruger_animals = all_animals.each do |animal|

    ParkAnimal.create(
    animal_id: animal.id,
    park_id: kruger.id
    )
end

mapungubwe_animals = all_animals.each do |animal|
  ParkAnimal.create(
  animal_id: animal.id,
  park_id: mapungubwe.id
)
end


addo_animals = all_animals.each do |animal|
  ParkAnimal.create(
    animal_id: animal.id,
    park_id: addo.id
  )
end

kgalagadi_animals = all_animals.each do |animal|
  ParkAnimal.create(
    animal_id: animal.id,
    park_id: kgalagadi.id
  )
end

hluhluwe_animals = all_animals.each do |animal|
  ParkAnimal.create(
    animal_id: animal.id,
    park_id: hluhluwe.id
  )
end

tsitsikamma_animals = all_animals.each do |animal|
  unless animal.name == "Pangolin"
    ParkAnimal.create(
      animal_id: animal.id,
      park_id: tsitsikamma.id
    )
  end
end

marakele_animals = all_animals.each do |animal|
  ParkAnimal.create(
    animal_id: animal.id,
    park_id: marakele.id
  )
end

augrabies_animals = all_animals.each do |animal|
  ParkAnimal.create(
    animal_id: animal.id,
    park_id: augrabies.id
  )
end

golden_gate_animals = all_animals.each do |animal|
  ParkAnimal.create(
    animal_id: animal.id,
    park_id: golden_gate.id
  )
end

User.create!(
  email: "caspersikosana@gmail.com",
  password: "password",
  name: "Sikosana",
  image: "user_images/cas.jpg"
)

User.create!(
  email: "tafamiri@gmail.com",
  password: "password",
  name: "Miry",
  image: "user_images/miry.jpg"
)


User.create!(
  email: "shumirai@gmail.com",
  password: "password",
  name: "Shumy",
  image: "user_images/shumi.jpg"
)

User.create!(
  email: "alvinsalters@gmail.com",
  password: "password",
  name: "AlvinS",
  image: "user_images/alvin-mahmudov-vKuEhorbvYI-unsplash.jpg"
)

User.create!(
  email: "timothyburner@gmail.com",
  password: "password",
  name: "Timmyturner",
  image: "user_images/tim-bish-fJ8XR7gIDGo-unsplash.jpg"
)
User.create!(
  email: "munashemusabayane@gmail.com",
  password: "password",
  name: "Munted09",
  image: "user_images/munted.jpg"
)

User.create!(
  email: "tracyevans@gmail.com",
  password: "password",
  name: "tracylions",
  image: "user_images/istockphoto-1472310103-1024x1024.jpg"
)

User.create!(
  email: "taylorswift@gmail.com",
  password: "password",
  name: "theOGtaylor",
  image: "user_images/taylor.jpeg"
)

User.create!(
  email: "belovedanopa@gmail.com",
  password: "password",
  name: "masterbee",
  image: "user_images/bee.jpg"
)

User.create!(
  email: "anesuz@gmail.com",
  password: "password",
  name: "gamer202",
  image: "user_images/ane.jpg"
)
puts "Seeding completed."
