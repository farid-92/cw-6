# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = []
5.times do
  name = Faker::Name.name
  users.push User.create(name: name, email: Faker::Internet.email(name), password: '12345678', password_confirmation: '12345678')
end
