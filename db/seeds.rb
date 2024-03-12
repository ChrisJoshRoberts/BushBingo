# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require_relative '/app/models/animal.rb'

animals_data = [
  { name: "African Elephant", points: 1, species: "Loxodonta africana", description: "African elephants are the largest land animals known for their long trunks and tusks.", sound: "trumpet.mp3", spoor: "elephant_spoor.jpg", image: "https://media.istockphoto.com/id/1367011547/photo/life-mature-elephant-on-white.jpg?s=2048x2048&w=is&k=20&c=xkmvedqJv8RdwFZaFb260tWW16ehSVwHTaRZjoFGLrU=" },
  { name: "Lion", points: 2, species: "Panthera leo", description: "Lions are large carnivorous cats known for their majestic manes.", sound: "roar.mp3", spoor: "lion_spoor.jpg", image: "https://plus.unsplash.com/premium_photo-1669725687221-6fe12c2da6b1?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Leopard", points: 3, species: "Panthera pardus", description: "The leopard is a large, graceful cat known for its distinctive spotted coat.", sound: "growl.mp3", spoor: "leopard_spoor.jpg", image: "https://images.unsplash.com/photo-1570463662416-7d8e39fc67e2?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Buffalo", points: 4, species: "Syncerus caffer", description: "The African buffalo is a large, robust species that is known for its unpredictable nature.", sound: "grunt.mp3", spoor: "buffalo_spoor.jpg", image: "https://images.unsplash.com/photo-1508605375977-9fe795aea86a?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "White Rhino", points: 5, species: "Ceratotherium simum", description: "The white rhinoceros is the second largest land mammal and is known for its broad mouth used for grazing.", sound: "snort.mp3", spoor: "rhino_spoor.jpg", image: "https://images.unsplash.com/photo-1596380297284-406d17428771?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Cheetah", points: 6, species: "Acinonyx jubatus", description: "The cheetah is the fastest land animal, capable of reaching speeds up to 75 mph in short bursts.", sound: "chirp.mp3", spoor: "cheetah_spoor.jpg", image: "https://images.unsplash.com/photo-1470742292565-de43c4b02b57?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Giraffe", points: 7, species: "Giraffa camelopardalis", description: "The giraffe is the tallest living terrestrial animal, with a long neck and legs.", sound: "bleat.mp3", spoor: "giraffe_spoor.jpg", image: "https://plus.unsplash.com/premium_photo-1669740462444-ba6e0c316b59?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" },
  { name: "Hippopotamus", points: 8, species: "Hippopotamus amphibius", description: "The hippopotamus is a large, mostly herbivorous mammal known for its aggressive behavior.", sound: "grunt.mp3", spoor: "hippo_spoor.jpg", image: "hippo.jpg" },
  { name: "Porcupine", points: 10, species: "Hystricidae", description: "Porcupines are large rodents known for their sharp quills used for defense.", sound: "grunt.mp3", spoor: "porcupine_spoor.jpg", image: "https://media.istockphoto.com/id/1770642608/photo/north-american-porcupine-in-meadow.jpg?s=2048x2048&w=is&k=20&c=BZZHGL15eo9_pm_IDjQQ9ZQC3a5U3z31jJag_GOixKo=" }
]

animals_data.each do |animal_data|
  Animal.create(
    name: animal_data[:name],
    points: animal_data[:points],
    species: animal_data[:species],
    description: animal_data[:description],
    sound: animal_data[:sound],
    spoor: animal_data[:spoor],
    image: animal_data[:image]
  )
end
