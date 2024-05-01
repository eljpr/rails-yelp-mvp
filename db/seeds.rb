# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
shack_fuyu = { name: 'Shack-Fuyu', address: '14A Old Compton St, London W1D 4TJ', category: 'japanese' }
wapalapam = { name: 'Wapalapam', address: 'Le Morne Brabant 91202, Mauritius', category: 'french' }
balthazar = { name: 'Balthazar', address: '4-6 Russell St, London WC2B 5HZ', category: 'french' }
duck_rice = { name: 'The Duck and Rice', address: '90 Berwick St, London W1F 0QB', category: 'chinese' }

[pizza_east, shack_fuyu, wapalapam, balthazar, duck_rice].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
