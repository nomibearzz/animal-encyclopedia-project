# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Animal.destroy_all
User.destroy_all

User.create(username: "admin", password: "admin", email: "admin@gmail.com", first_name: "Administrator", admin: true)

User.create(username: "jobiwan", password: "password", email: "jobi_wan@gmail.com", first_name: "Joe", last_name: "M", admin:nil)

User.create(username: "the_force", password: "password", email: "force@gmail.com", first_name: "Chris", admin:nil)

User.create(username: "danboard", password: "password", email: "box@gmail.com", first_name: "the", last_name: "Box", admin:nil)

Animal.create(name: "Giant Panda", description: "High in dense bamboo forests in the misty, rainy mountains of southwestern China lives one of the world's rarest mammals: the giant panda, also called the panda. Only about 1,500 of these black-and-white relatives of bears survive in the wild.", scientific_name: "Ailuropoda melanoleuca", family_name: "Ursidae", classification: "Mammal", diet: "Omnivore", life_span: "20 years", habitat: "High-altitude, moist bamboo forest", photo: "https://kids.nationalgeographic.com/content/dam/kids/photos/animals/Mammals/Q-Z/photoark-panda.adapt.945.1.png")

Animal.create(name: "Brown Bear", description: "As winter approaches, brown bears—often called grizzly bears—prepare for a long hibernation. During the fall, a brown bear eats practically around the clock, stocking up for the four to seven months when it'll have to live off stored body fat. A grizzly may chow down on 90 pounds (40 kilograms) of food each day.", scientific_name: "Ursus arctos", family_name: "Ursidae", classification: "Mammal", diet: "Omnivore", life_span: "25 years", habitat: "Grassland, Mountain", photo: "https://kids.nationalgeographic.com/content/dam/kids/photos/animals/Mammals/A-G/brown-bear-cubs.adapt.945.1.jpg")

Animal.create(name: "Polar Bear", description: "Polar bears live along shores and on sea ice in the icy cold Arctic. When sea ice forms over the ocean in cold weather, many polar bears, except pregnant females, head out onto the ice to hunt seals. Polar bears primarily eat seals. Polar bears often rest silently at a seal's breathing hole in the ice, waiting for a seal in the water to surface. A polar bear may also hunt by swimming beneath the ice. But climate change is making it harder for polar bears to hunt. Ice melts earlier and re-forms later than it has in the past. Without the sea ice, the polar bear must scavenge for other, less nutritious food.", scientific_name: "Ursus maritimus", family_name: "Ursidae", classification: "Mammal", diet: "Carnivore", life_span: "25 to 30 years", habitat: "Artic", photo: "https://kids.nationalgeographic.com/content/dam/kids/photos/animals/Mammals/H-P/polar-bear-mom-cub.adapt.945.1.jpg")

Animal.create(name: "Lion", description: "For all of their roaring, growling, and ferociousness, lions are family animals and truly social in their own communities. They usually live in groups of 15 or more animals called prides. Prides can be as small as 3 or as big as 40 animals. In a pride, lions hunt prey, raise cubs, and defend their territory together. In prides the females do most of the hunting and cub rearing. Usually all the lionesses in the pride are related—mothers, daughters, grandmothers, and sisters. Many of the females in the pride give birth at about the same time. A cub may nurse from other females as well as its mother. Each pride generally will have no more than two adult males. ", scientific_name: "Panthera leo", family_name: "Felidae", classification: "Mammal", diet: "Carnivore", life_span: "10 to 14 years", habitat: "Desert, Grassland", photo: "https://kids.nationalgeographic.com/content/dam/kids/photos/animals/Mammals/H-P/lion-cubs-closeup.adapt.945.1.jpg")

Animal.create(name: "Sloth", description: "It's a good thing sloths don't have to go to school. They'd never make it on time. These drowsy tree-dwellers sleep up to 20 hours a day! And even when they are awake, they barely move at all. In fact, they're so incredibly sluggish, algae actually grows on their fur.", scientific_name: "Bradypus variegatus", family_name: "Bradypodidae", classification: "Mammal", diet: "Herbivore", life_span: "10 years", habitat: "Forest", photo: "https://kids.nationalgeographic.com/content/dam/kids/photos/animals/Mammals/Q-Z/sloth-beach-upside-down.adapt.945.1.jpg")

Animal.create(name: "Green Sea Turtle", description: "Green sea turtles are the world’s largest species of hard-shelled sea turtle. While most individuals weigh about 300 to 400 pounds (136 to 181 kilograms), some can be as heavy as 440 pounds (204 kilograms).", scientific_name: "Chelonia mydas", family_name: "Cheloniidae", classification: "Reptile", diet: "Herbivore", life_span: "Up to 80 years", habitat: "Ocean", photo: "https://kids.nationalgeographic.com/content/dam/kids/photos/animals/Reptiles/A-G/green-sea-turtle-coral.adapt.945.1.jpg")

Animal.create(name: "Nile Crocodile", description: "Although Nile crocodiles resemble armored tanks with huge, teeth-filled mouths, these reptiles are unusually attentive parents. When a large male croc spots a female that catches his eye, he bellows and splashes, slapping his snout on the water to get her attention. He grunts and growls, and sometimes, inhales as hard as he can, submerging his snout and blowing water through his nostrils, producing a fountainlike spray.", scientific_name: "Crocodylus niloticus", family_name: "Crocodylidae", classification: "Reptile", diet: "Carivore", life_span: "45 years", habitat: "Freshwater", photo: "https://kids.nationalgeographic.com/content/dam/kids/photos/animals/Reptiles/H-P/nile-crocodile-walking-sun.adapt.945.1.jpg")
