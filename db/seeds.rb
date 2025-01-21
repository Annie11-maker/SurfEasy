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
  image_url: 'https://www.wetsuitcentre.co.uk/media/catalog/product/cache/157c811d2fe3ff1b7ea8f84c248170d8/s/c/screenshot_2023-11-03_104735.png',
  description: 'A versatile 9-foot longboard for your daily surfing needs.',
  price: 499.99,
  user: david,
  color: "tan",
  size: "large"
)

Surfboard.create!(
  name: 'Speedy Shortboard',
  image_url: 'https://www.wetsuitcentre.co.uk/media/catalog/product/cache/60dfce8a96edaa221a78ed63232f76c9/s/c/screenshot_2023-10-06_074419.png',
  description: 'A fast and agile 6-foot shortboard designed for quick turns and speed.',
  price: 599.99,
  user: san,
  color: "white",
  size: "large"
)

Surfboard.create!(
  name: 'Retro Fish',
  image_url: 'https://www.wetsuitcentre.co.uk/media/catalog/product/cache/8f56e7d1ddebb659e06c9d4c2d205225/e/l/elements-longboard-ftu-navy-base-1.jpg',
  description: 'A retro-style fish surfboard with a twin fin setup.',
  price: 450.00,
  user: michelle,
  color: "blue",
  size: "large"
)

Surfboard.create!(
  name: 'Big Wave Gun',
  image_url: 'https://www.wetsuitcentre.co.uk/media/catalog/product/cache/3f90f119a98e62b8b8ce03290dc74a28/s/c/screenshot_2024-05-29_085929.png',
  description: 'An 8-foot board designed for tackling the biggest waves.',
  price: 750.50,
  user: annie,
  color: "red",
  size: "short"
)

Surfboard.create!(
  name: 'Funboard Hybrid',
  image_url: 'https://www.wetsuitcentre.co.uk/media/catalog/product/cache/3abfbba11a25b8481a53bcc54efb7c72/s/p/spark_mal_1.jpg',
  description: 'A versatile fun board that blends elements of a longboard and shortboard.',
  price: 550.75,
  user: gabriel,
  color: "gray",
  size: "medium"
)

Surfboard.create!(
  name: 'Beginner Softtop',
  image_url: 'https://example.com/images/beginner_softtop.jpg',
  description: 'A perfect board for beginners with a soft top for safety.',
  price: 350.00,
  user: marco,
  color: "white",
  size: "short"
)

# 3. Display a message 🎉
puts "Finished! Created #{User.count} user(s) and #{Surfboard.count} surfboard(s)."
