require_relative '../config/environment'
require_relative '../app/models/fridge'

loop do
puts "Enter an option:"
puts "A) List all Fridges"
puts "B) Add a Fridge"
puts "C) Remove a Fridge"
puts "EXIT to exit"
option = gets.chomp
puts "You selected #{option}"

if option.upcase == 'A'
  all_fridges = Fridge.all
  all_fridges.each_with_index do |fridge|
    puts "** #{fridge.name} **"
    puts "---#{fridge.location}"
    puts "------#{fridge.brand}"
    puts "---------#{fridge.size}"
  end
elsif option.upcase == 'B'
    puts "Enter Fridge Name"
    name = gets.chomp 
    puts "Enter Fridge Location"
    location = gets.chomp
    puts "Fridge Brand?"
    brand = gets.chomp
    puts "Fridge Size?"
    size = gets.chomp
    Fridge.create(name: name, location: location, brand: brand, size: size)
elsif option.upcase == 'C'
    puts "Which Fridge name would you like to remove?"
    fridge_to_remove = gets.chomp
    Fridge.find_by(name: fridge_to_remove).delete
    puts "#{fridge_to_remove} has been deleted"
elsif option.upcase == "QUIT" || "EXIT"
    break
end
end