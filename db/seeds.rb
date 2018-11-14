# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Channel.destroy_all
Message.destroy_all

10.times do 
    Channel.create(name: Faker::FamilyGuy.location)
end 

20.times do 
    User.create(username: Faker::FamilyGuy.character)
end 

30.times do 
    Message.create(user_id: Faker::Number.between(1, 20), channel_id: Faker::Number.between(1, 10), speech: Faker::Hipster.paragraph, translation: Faker::Hipster.paragraph, username: Faker::FamilyGuy.character)
end 