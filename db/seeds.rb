# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



100.times do
  user = User.new
  user.username = Faker::Internet.user_name
  user.email = Faker::Internet.email
  user.password = 'text'
  #user.password_confirmation = user.password
  user.bio = Faker::Lorem.sentence
  user.save

end
