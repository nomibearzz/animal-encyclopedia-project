# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Animal.destroy_all
User.destroy_all

User.create(username: "admin", password: "admin", email: "admin@gmail.com", first_name: "Administrator", admin: true)

User.create(username: "jobiwan", password: "password", email: "jobi_wan@gmail.com", first_name: "Joe", last_name: "M", admin:nil)

User.create(username: "the_force", password: "password", email: "force@gmail.com", first_name: "Chris", admin:nil)

User.create(username: "danboard", password: "password", email: "box@gmail.com", first_name: "the", last_name: "Box", admin:nil)
