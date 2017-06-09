 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

u1 = User.new
u1.email = "a@a.com"
u1.password ="!2341234"
u1.password_confirmation ="!2341234"
u1.first_name ="Abdus"
u1.last_name ="Anwar"
gender ="Male"
skill_level ="Beginner"
u1.save

puts"#{User.count} users in the database"

Listing.destroy_all

l1 = Listing.new
l1.user_id = u1.id
l1.date = Date.parse("2017/6/12")
l1.start_time = 1030
l1.end_time = 1100
l1.recurring = 0
l1.location = "Blomquist"

l1.save
puts"#{Listing.count} listings in the database"
