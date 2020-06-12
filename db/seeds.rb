# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Like.destroy_all

User.create(user_name: "hkofkin", password: "bashir", name:"hannah", location: "chicago")
User.create(user_name: "aradevich", password: "bashir", name:"aleksa", location: "brooklyn")
User.create(user_name: "bigfan", password: "bashir", name:"fan", location: "brooklyn")


Post.create(content: "Coding is so cool", user_id: 6)
Post.create(content: "Kittens are cool", user_id: 7)



