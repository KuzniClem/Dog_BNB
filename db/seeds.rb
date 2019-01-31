# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
	city = City.new
	city.name = Faker::TwinPeaks.location
	city.save
end

10.times do
	dogsitter = Dogsitter.new
	dogsitter.name = Faker::StrangerThings.character
	dogsitter.city = City.all.sample
	dogsitter.save
end

20.times do
	dog = Dog.new
	dog.name = Faker::Dog.name
	dog.breed = Faker::Dog.breed
	dog.city = City.all.sample
	dog.save
end

30.times do
	stroll = Stroll.new
	stroll.dog = Dog.all.sample
	stroll.dogsitter = Dogsitter.all.sample
	stroll.save
end
