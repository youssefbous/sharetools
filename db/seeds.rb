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
tondeuse = Tool.new(title: "Tondeuse", caracteristics: "Bosch - 900W", description: "tondeuse à gazon", user: user, price_per_day: 10 )
tondeuse.save!


puts 'Finished!'
