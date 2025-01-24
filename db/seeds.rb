# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts 'Cleaning database...'
Booking.destroy_all
Surfboard.destroy_all
User.destroy_all

# 2. Create the instances 🏗️
puts 'Creating users...'
david = User.create!(user_name: 'Dreamy Dave', first_name: "David", last_name: "Grey", email: "david@gmail.com", password: "password")
san = User.create!(user_name: 'Sketchy San', first_name: "San", last_name: "Jay", email: "jay@gmail.com", password: "password")
michelle = User.create!(user_name: 'Michalien', first_name: "Michelle", last_name: "Chege", email: "michelle@gmail.com", password: "password")
annie = User.create!(user_name: 'Aweseome Annie', first_name: "Annie", last_name: "Shouket", email: "annie@gmail.com", password: "password")
gabriel = User.create!(user_name: 'Go Getter Gab', first_name: "Gabriel", last_name: "Atak", email: "gabriel@gmail.com", password: "password")
marco = User.create!(user_name: 'Money Marco', first_name: "Marco", last_name: "Ricci", email: "marco@gmail.com", password: "password")

puts 'Creating Surfboards...'
Surfboard.create!(
  name: 'Classic Longboard',
  image_url: 'https://plus.unsplash.com/premium_photo-1667865667770-9cd722cf6d57?q=80&w=3000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  description: 'A versatile 9-foot longboard for your daily surfing needs.',
  price: 499.99,
  user: david,
  color: "Tan",
  size: "Large"
)

Surfboard.create!(
  name: 'Speedy Shortboard',
  image_url: 'https://img.freepik.com/free-photo/front-view-surfboard-beach_23-2148723380.jpg?ga=GA1.1.1978007662.1737587384&semt=ais_hybrid',
  description: 'A fast and agile 6-foot shortboard designed for quick turns and speed.',
  price: 599.99,
  user: san,
  color: "White",
  size: "Large"
)

Surfboard.create!(
  name: 'Retro Fish',
  image_url: 'https://img.freepik.com/free-photo/surfboard-sand_1252-569.jpg?t=st=1737721495~exp=1737725095~hmac=5380aaa27be98d45e9697492f849d33a3285d6b746dd483addd95f7cda84a1e7&w=740',
  description: 'A retro-style fish surfboard with a twin fin setup.',
  price: 450.00,
  user: michelle,
  color: "Yellow",
  size: "Large"
)

Surfboard.create!(
  name: 'Big Wave Gun',
  image_url: 'https://images.unsplash.com/photo-1588605800921-78dc67c62685?q=80&w=2922&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  description: 'An 8-foot board designed for tackling the biggest waves.',
  price: 750.50,
  user: annie,
  color: "White",
  size: "Short"
)

Surfboard.create!(
  name: 'Funboard Hybrid',
  image_url: 'https://images.unsplash.com/photo-1531722569936-825d3dd91b15?q=80&w=4470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  description: 'A versatile fun board that blends elements of a longboard and shortboard.',
  price: 550.75,
  user: gabriel,
  color: "Orange",
  size: "Medium"
)

Surfboard.create!(
  name: 'Beginner Softtop',
  image_url: 'https://plus.unsplash.com/premium_photo-1676645882464-45ac0299197a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  description: 'A perfect board for beginners with a soft top for safety.',
  price: 350.00,
  user: marco,
  color: "Green",
  size: "Short"
)

# 3. Display a message 🎉
puts "Finished! Created #{User.count} user(s) and #{Surfboard.count} surfboard(s)."
