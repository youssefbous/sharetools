# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Tool.destroy_all
puts 'Creating tools...'
user = User.create(name: "ben",address: "lyon" , email: "ben@hotmail.com", password: "password")
tondeuse = Tool.new(title: "Tondeuse", caracteristics: "Ne consomme pratiquement rien, bac de 50L d'herbes.", description: "Salut, je suis français mais je vis aux states, j'ai une tondeuse en Très bon état à prêter !", user: user, price_per_day: 20 )
tondeuse.save!
hammer = Tool.new(title: "Hammer", caracteristics: "The hammer is orange, solid and a bit heavy.", description: "Oh my god, it's such a beautiful hammer, my grandpa gave it to me when I was 6 YO !", user: user, price_per_day: 2 )
hammer.save!
turn-screw = Tool.new(title: "Turn-screw", caracteristics: "It's little and can help in many different situations.", description: "Waouwww, this turn screw will change your life in a way you would never imagine !", user: user, price_per_day: 4 )
turn-screw.save!
sander = Tool.new(title: "Sander", caracteristics: "Nothing to say, it's as efficient as cristiano in front of the goal.", description: 'If you want to polish your floor, you really have to try my sander', user: user, price_per_day: 54 )
sander.save
saw = Tool.new(title: "Saw", caracteristics: 'Feel free change the different modes existing on this saw.', description: 'Try my brand new saw, it can work on humans as well.', user: user, price_per_day: 54 )
saw.save
puts 'Finished!'
