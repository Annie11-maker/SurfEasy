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
david = User.create!(user_name: 'Dreamy Dave', first_name: "David", last_name: "Grey", email: "david@gmail.com", password: "password", pic_url: "https://d26jy9fbi4q9wx.cloudfront.net/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBL1dPQXc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--7986f34ff3625ee44e202a9bebaf27dfccc5f9ae/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2hwQWNocEFjaDdCam9KWTNKdmNEb09ZWFIwWlc1MGFXOXUiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--df4f7d63fe19fb30952f52eed6dffc392a97578c/David_IUKEDI_30-removebg-preview.png")
san = User.create!(user_name: 'Sketchy San', first_name: "San", last_name: "Jay", email: "jay@gmail.com", password: "password", pic_url: "https://d26jy9fbi4q9wx.cloudfront.net/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBL0xVQXc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--d4f3e871cb1c01400b6e5c072384fcba6563c778/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2hwQWNocEFjaDdCam9KWTNKdmNEb09ZWFIwWlc1MGFXOXUiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--b67d9ded4d28d0969fbb98b4c21b79257705a99a/_MG_1195-12.jpg")
michelle = User.create!(user_name: 'Michalien', first_name: "Michelle", last_name: "Chege", email: "michelle@gmail.com", password: "password", pic_url: "https://avatars.githubusercontent.com/u/169837635?v=4")
annie = User.create!(user_name: 'Aweseome Annie', first_name: "Annie", last_name: "Shouket", email: "annie@gmail.com", password: "password", pic_url: "https://d26jy9fbi4q9wx.cloudfront.net/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBM3lrQXc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--b21defc8cea2dfe1cf35861ea62c8db87bdb0db1/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lKYW5CbFp3WTZCa1ZVT2hOeVpYTnBlbVZmZEc5ZlptbHNiRnNJYVFISWFRSElld1k2Q1dOeWIzQTZEbUYwZEdWdWRHbHZiZz09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--23cdbdf9871e44adeb4d843a03b0793a5f08394b/IMG_7483.jpeg")
gabriel = User.create!(user_name: 'Go Getter Gab', first_name: "Gabriel", last_name: "Atak", email: "gabriel@gmail.com", password: "password", pic_url: "https://avatars.githubusercontent.com/u/87481139?v=4")
marco = User.create!(user_name: 'Money Marco', first_name: "Marco", last_name: "Ricci", email: "marco@gmail.com", password: "password", pic_url: "")

puts 'Creating Surfboards...'
Surfboard.create!(
  name: 'Classic Longboard',
  image_url: 'https://plus.unsplash.com/premium_photo-1667865667770-9cd722cf6d57?q=80&w=3000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  description: 'A versatile 9-foot longboard for your daily surfing needs.',
  price: 14.75,
  user: david,
  color: "Tan",
  size: "Large",
  address: "Bondi Beach, Bondi, Sydney, NSW 2026, Australia"
)

Surfboard.create!(
  name: 'Speedy Shortboard',
  image_url: 'https://img.freepik.com/free-photo/front-view-surfboard-beach_23-2148723380.jpg?ga=GA1.1.1978007662.1737587384&semt=ais_hybrid',
  description: 'A fast and agile 6-foot shortboard designed for quick turns and speed.',
  price: 19.50,
  user: san,
  color: "White",
  size: "Large",
  address: "Waikiki Beach, Kalakaua Avenue, Honolulu, HI 96815, USA"
)

Surfboard.create!(
  name: 'Retro Fish',
  image_url: 'https://img.freepik.com/free-photo/surfboard-sand_1252-569.jpg?t=st=1737721495~exp=1737725095~hmac=5380aaa27be98d45e9697492f849d33a3285d6b746dd483addd95f7cda84a1e7&w=740',
  description: 'A retro-style fish surfboard with a twin fin setup.',
  price: 23.99,
  user: michelle,
  color: "Yellow",
  size: "Large",
  address: "Supertubes Beach, Jeffreys Bay, Eastern Cape 6330, South Africa"
)

Surfboard.create!(
  name: 'Big Wave Gun',
  image_url: 'https://images.unsplash.com/photo-1588605800921-78dc67c62685?q=80&w=2922&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  description: 'An 8-foot board designed for tackling the biggest waves.',
  price: 15.50,
  user: annie,
  color: "White",
  size: "Short",
  address: "Playa Hermosa, Puntarenas Province, Jaco, Costa Rica"
)

Surfboard.create!(
  name: 'Funboard Hybrid',
  image_url: 'https://images.unsplash.com/photo-1531722569936-825d3dd91b15?q=80&w=4470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  description: 'A versatile fun board that blends elements of a longboard and shortboard.',
  price: 15.75,
  user: gabriel,
  color: "Orange",
  size: "Medium",
  address: "La Gravière Beach, Avenue de la Grande Dune, 40150 Hossegor, France"
)

Surfboard.create!(
  name: 'Beginner Softtop',
  image_url: 'https://plus.unsplash.com/premium_photo-1676645882464-45ac0299197a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  description: 'A perfect board for beginners with a soft top for safety.',
  price: 20.60,
  user: marco,
  color: "Green",
  size: "Short",
  address: "Fistral Beach, Headland Road, Newquay, Cornwall TR7 1HY, United Kingdom"
)

# 3. Display a message 🎉
puts "Finished! Created #{User.count} user(s) and #{Surfboard.count} surfboard(s)."
