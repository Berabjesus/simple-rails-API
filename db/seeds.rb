# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do 
  # Article.create(title: 'hello 2', content: ' 2 Hellloooo oowoooooo o owowoowo ow oowowo owo ')
  Article.create({title: Faker::Book.title, content: Faker::Lorem.sentence})
end