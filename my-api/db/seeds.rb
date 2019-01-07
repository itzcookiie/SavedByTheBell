# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: 'Bobby')
u2 = User.create(username: 'Mike')
u3 = User.create(username: 'Lily')

s1 = Sound.create(title: 'Blizzard', description: 'Brrrrrrrrrrhhhhhh, it\'s coldddddddd', audio_url: 'http://localhost:3000/audio/snow-blizzard.mp3', image: 'http://localhost:3000/images/snow_blizzard.jpg'  )
s2 = Sound.create(title: 'Car Crash', description: 'Quick, it\'s an emergency', audio_url: 'http://localhost:3000/audio/car-crash.mp3', image: 'http://localhost:3000/images/car_crash.jpg')
s3 = Sound.create(title: 'Bird Song', description: 'The bird is the word', audio_url: 'http://localhost:3000/audio/birds-singing.mp3', image: 'http://localhost:3000/images/bird_song.jpg')
s3 = Sound.create(title: 'Cat fight', description: 'Meow?', audio_url: 'http://localhost:3000/audio/cat-fight.mp3', image: 'http://localhost:3000/images/cat_fight.jpg')
s3 = Sound.create(title: 'Cooking Sizzling', description: 'If you can\'t take the heat, get out the kitchen ', audio_url: 'http://localhost:3000/audio/cooking-sizzling.mp3', image: 'http://localhost:3000/images/cooking_pan.jpg')
s3 = Sound.create(title: 'Different Language', description: 'Me uh no speak good english-ah', audio_url: 'http://localhost:3000/audio/different-language.mp3', image: 'http://localhost:3000/images/foreign_language.jpg')
s3 = Sound.create(title: 'Dogs Barking', description: 'Who let the dogs out', audio_url: 'http://localhost:3000/audio/dogs-barking.mp3', image: 'http://localhost:3000/images/dogs_barking.jpg')
s3 = Sound.create(title: 'Party', description: 'Omg this party is so much fun LOL LMFAO', audio_url: 'http://localhost:3000/audio/party.mp3', image: 'http://localhost:3000/images/party.jpg')
s3 = Sound.create(title: 'Restaurant', description: 'Table for one please', audio_url: 'http://localhost:3000/audio/restaurant.mp3', image: 'http://localhost:3000/images/busy_restaurant.jpg')
s3 = Sound.create(title: 'Riot', description: 'RIOOOOOOOOOOOOOOOOOOOOT', audio_url: 'http://localhost:3000/audio/riot.mp3', image: 'http://localhost:3000/images/riot.jpg')
s3 = Sound.create(title: 'Traffic', description: 'Get outta the way, you *honk*', audio_url: 'http://localhost:3000/audio/traffic.mp3', image: 'http://localhost:3000/images/traffic.jpg')

us1 = UserSound.create(user_id: 1, sound_id: 1)
us1 = UserSound.create(user_id: 2, sound_id: 2)
us1 = UserSound.create(user_id: 3, sound_id: 1)
us1 = UserSound.create(user_id: 2, sound_id: 2)
us1 = UserSound.create(user_id: 1, sound_id: 3)