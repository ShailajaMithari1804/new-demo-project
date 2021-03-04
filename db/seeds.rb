# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 100.times do 
# 	User.create(name: "user-test", email: "user-test@gmail.com")
# end
require 'faker'
if User.count.zero?
  100.times do
    u = User.create(
      name: Faker::Name.name_with_middle,
      email: Faker::Internet.free_email
    )
    u.profile_image.(File.open('/home/bacancy/Documents/sites/new-demo-project/app/assets/images/default-image.jpg'))
  end
end