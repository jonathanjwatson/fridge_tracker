# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Drink.destroy_all
Food.destroy_all
Fridge.destroy_all

larryFridge = Fridge.create(name: 'Larry Fridge', location: "Kitchen", brand: "Maytag", size: 3.4)


Food.create(name: "Eggs", weight: 1.2, vegan: false)
Food.create(name: "Bacon", weight: 16.1, vegan: false)
Food.create(name: "Tofu", weight: .2, vegan: true)