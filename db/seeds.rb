# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: "astrid@mail.com",
  password: '#$taawktljasktlw4aaglj'
)

User.create!(
  email: "wrguard@mail.com",
  password: '#$taawktljasktlw4aaglj'
)

User.create!(
  email: "pditty@mail.com",
  password: '#$taawktljasktlw4aaglj'
)
users = User.all


Wiki.create!(
  title: "Crafting your best Daedric sword",
  body: "Grind up your smithing, enchating, and potion-making abilities, and use the smithing/enchanting/alchemy loop."
)

Wiki.create!(
  title: "Who is the real Dragonborn?",
  body: "There have been a number of them throughout the ages. Currently there are two living (although Mirak has been hiding in another plain of Oblivion)"
)

Wiki.create!(
  title: "How do I level conjuration quickly?",
  body: "Kill a random creature (something mean and ugly), then cast Soul Trap on it, wait 1 hour, wish/rinse/repeat. In 30 minutes to an hour you should be at level 100."
)
wikis = Wiki.all


puts 'Seed finished'
puts "#{Wiki.count} wikis created"
puts "#{User.count} users created"
