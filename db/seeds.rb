# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Language.destroy_all
UserLanguage.destroy_all

u1 = User.create(name: "Ingrid", city: "New York", gender: "Female", bio: "I'm interested in practicing English", email: "ingrid@gmail.com", age: 26, password: "1234")
u2 = User.create(name: "Montse", city: "New York", gender: "Female", bio: "Looking for a partner to practice Spanish", email: "montse@gmail.com", age: 25, password: "1234")
u3 = User.create(name: "Matt", city: "New Jersey", gender: "Male", bio: "Love learning languages", email: "matt@gmail.com", age: 24, password: "1234")
u4 = User.create(name: "Robert", city: "New Jersey", gender: "Male", bio: "I enjoy learning new languages and new cultures", email: "robert@gmail.com", age: 27, password: "1234")

l1 = Language.create(language_name: "Spanish", level: "Native")
l2 = Language.create(language_name: "English", level: "Fluent")
l3 = Language.create(language_name: "French", level: "Intermediate")
l4 = Language.create(language_name: "Italian", level: "Basic")

UserLanguage.create(user: u1, language: l1, fluent: true)
UserLanguage.create(user: u2, language: l2, fluent: true)
UserLanguage.create(user: u3, language: l3, fluent: true)
UserLanguage.create(user: u4, language: l4, fluent: false)

Meetup.create(requester: u3, acceptor: u4)
