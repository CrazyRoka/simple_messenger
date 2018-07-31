# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Message.destroy_all

roka = User.new name: 'Roka', email: 'roka@gmail.com'
roka.password = roka.password_confirmation = '123456'
roka.save!

john = User.new name: 'John', email: 'john@gmail.com'
john.password = john.password_confirmation = '123456'
john.save!

Message.create! sender: roka, receiver: john, text: 'Hello!'
Message.create! sender: john, receiver: roka, text: 'Hi!'
