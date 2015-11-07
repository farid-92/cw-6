# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



50.times do

  Gallery.create(title: Faker::Commerce.product_name,
                 user_id: 1
  )
end



users = []
5.times do
  name = Faker::Name.name
  users.push User.create(name: name, email: Faker::Internet.email(name), password: '12345678', password_confirmation: '12345678')
end

admin_user = User.create(name: 'Admin', email: 'admin@example.com', password: 'adminadmin', password_confirmation: 'adminadmin', admin: true)