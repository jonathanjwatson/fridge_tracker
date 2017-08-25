# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FridgeDrink.destroy_all
FridgeFood.destroy_all
Drink.destroy_all
Food.destroy_all
Fridge.destroy_all

larryFridge = Fridge.create(name: 'Larry Fridge', location: "Kitchen", brand: "Maytag", size: 3.4)
barryFridge = Fridge.create(name: 'Barry Fridge', location: "Garage", brand: "Maytag", size: 3.4)

barryFridge.foods = [
    Food.create(name: "Eggs", weight: 1.2, vegan: false),
    Food.create(name: "Bacon", weight: 16.1, vegan: false)
]
barryFridge.drinks = [
    Drink.create(name: "OJ", size: 16, alcoholic: false),
    Drink.create(name: "Milk", size: 64, alcoholic: false)
]
larryFridge.foods = [
    Food.create(name: "Tofu", weight: 0.2, vegan: true)
]
larryFridge.drinks = [
    Drink.create(name: "Bourbon", size: 32, alcoholic: true)
]
