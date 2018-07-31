# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Message.destroy_all

roka = User.create name: 'Roka', password_digest: '123'
john = User.create name: 'John', password_digest: '321'

Message.create sender: roka, receiver: john, text: 'Hello!'
Message.create sender: john, receiver: roka, text: 'Hi!'
