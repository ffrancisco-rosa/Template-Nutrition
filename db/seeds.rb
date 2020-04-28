# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying everything"


WorkLocation.destroy_all
Customer.destroy_all


puts "Creating Work Locations"

WorkLocation.create(name: "Vila Petra", address: "Albufeira", nutri_id: 1 )
WorkLocation.create(name: "HabiClinic", address: "Tunes", nutri_id: 1 )
WorkLocation.create(name: "Trainning Center", address: "Quarteira", nutri_id: 1 )
WorkLocation.create(name: "LsTrainning", address: "Olhão", nutri_id: 1 )
WorkLocation.create(name: "PowerFit", address: "Faro", nutri_id: 1 )
WorkLocation.create(name: "Lisboa", address: "Lisboa", nutri_id: 3 )

puts "Creating Customers"

15.times do Customer.create(
  first_name: Faker::Name.unique.first_name,
  last_name:Faker::Name.last_name,
  age: rand(18..55),
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.phone_number,
  nutri_id: 1
)
end

5.times do Customer.create(
  first_name: Faker::Name.unique.first_name,
  last_name:Faker::Name.last_name,
  age: rand(18..55),
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.phone_number,
  nutri_id: 3,
  consultation_spot_id: WorkLocation.ids.sample
)
end
