# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Clearing data first ..."
Restaurant.destroy_all
puts "Previous data cleared"
oz = {
  name: "Chez Oz",
  address: "Watermael",
  phone_number: "+324765423",
  category: "belgian"
}

villa_singha = {
  name: "Villa Singha",
  address: "Auderghem",
  phone_number: "+324765425",
  category: "chinese"
}

pizza_vino = {
  name: "Pizza Vino",
  address: "Ixelles",
  phone_number: "+324765426",
  category: "italian"
}

kokuban = {
  name: "Kokuban",
  address: "Bruxelles",
  phone_number: "+324765427",
  category: "japanese"
}

fruit_defendu = {
  name: "Le Fruit Défendu",
  address: "Chatelain",
  phone_number: "+324765428",
  category: "french"
}

[oz, villa_singha, pizza_vino, kokuban, fruit_defendu].each do |attributes|
  restaurant = Restaurant.create(attributes)
  puts "#{restaurant.name} successfully created"
end
puts "5 restaurants added"
