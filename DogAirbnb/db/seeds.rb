# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

City.destroy_all
12.times do |i|
	city = City.create!(
	city_name: Faker::Address.city
	)
puts  "Cities created"
end

Dog.destroy_all
48.times do |i|
	dog = Dog.create!(
		name: Faker::Hipster.word,
		race: Faker::Demographic.race,
		city: City.all.sample
		)
puts "Dogs created"
end

Dogsitter.destroy_all
12.times do |i|
	dogsitter = Dogsitter.create!(
		fist_name:Faker::Name.first_name,	
		last_name: Faker::Name.last_name,
		city: City.all.sample
		)
puts "Dogsitters created"
end 

Stroll.destroy_all
72.times do |i|
	stroll = Stroll.create!(
		date: Faker::Date.between(from: 30.days.ago, to: 1.year.from_now),
		dog: Dog.all.sample,
		dogsitter: Dogsitter.all.sample
		)
puts "Strolls created"
end
