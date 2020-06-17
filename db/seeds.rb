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

User.create(user_name: "frecklz45", password: "bashir", name:"Hannah", location: "Chicago, IL", bio: "hello world")
User.create(user_name: "catgirl108", password: "bashir", name:"Aleksa", location: "Brooklyn, NY", bio: "bloop")
User.create(user_name: "michlovesmemes", password: "bashir", name:"Michelle", location: "Brooklyn, NY", bio: "i'm michelle and i love memes")
User.create(user_name: "jackattack", password: "bashir", name:"Jack", location: "New York, NY", bio: "brb checking the turnip prices")
User.create(user_name: "reiofsunshine", password: "bashir", name:"Rei", location: "New York, NY", bio: "big french pry fan")
User.create(user_name: "nickiminaj", password: "bashir", name:"Nicki Minaj", location: "Queens, NY", bio: "im onika maraj")
User.create(user_name: "mariahcarey", password: "bashir", name:"Mariah Carey", location: "New York, NY", bio: "i have so many #1s")
User.create(user_name: "queenbey", password: "bashir", name:"Beyonce", location: "Houston, TX", bio: "h-town represent")
User.create(user_name: "youknowwhatsup", password: "bashir", name:"Sk8r Boy", location: "Jacksonville, FL", bio: "i was a boy, she was a girl")
User.create(user_name: "thehivestan1", password: "bashir", name:"Stan", location: "Los Angeles, CA", bio: "Stream _____ for clear skin")


Post.create(content: "coding is so cool", user_id: 2)
Post.create(content: "puppies are the cutest", user_id: 1)
Post.create(content: "i love cats", user_id: 2)
Post.create(content: "about to give a lecture on OOP.. wish me luck!", user_id: 3)
Post.create(content: "stream superbass", user_id: 2)
Post.create(content: "everyone remember to social distance!!!!", user_id: 1)
Post.create(content: "having trouble finding a meme that speaks to me", user_id: 3)
Post.create(content: "redhead squad UPPP", user_id: 1)
Post.create(content: "i really would like french pry to win...", user_id: 5)
Post.create(content: "psa that rei is asking me how to hack a vote", user_id: 4)
Post.create(content: "everyone watch out for french pry squad", user_id: 4)
Post.create(content: "french pry won....and i oop", user_id: 5)

Like.create(user_id: 1, post_id: 10)
Like.create(user_id: 2, post_id: 10)
Like.create(user_id: 3, post_id: 10)
Like.create(user_id: 4, post_id: 10)
Like.create(user_id: 6, post_id: 10)
Like.create(user_id: 7, post_id: 10)
Like.create(user_id: 8, post_id: 10)
Like.create(user_id: 9, post_id: 10)
Like.create(user_id: 10, post_id: 10)
Like.create(user_id: 1, post_id: 7)
Like.create(user_id: 2, post_id: 7)
Like.create(user_id: 3, post_id: 7)
Like.create(user_id: 4, post_id: 7)
Like.create(user_id: 5, post_id: 7)
Like.create(user_id: 6, post_id: 7)
Like.create(user_id: 7, post_id: 7)
Like.create(user_id: 8, post_id: 7)
Like.create(user_id: 2, post_id: 12)
Like.create(user_id: 3, post_id: 12)
Like.create(user_id: 5, post_id: 12)
Like.create(user_id: 7, post_id: 12)
Like.create(user_id: 9, post_id: 12)
Like.create(user_id: 10, post_id: 12)
Like.create(user_id: 2, post_id: 6)
Like.create(user_id: 4, post_id: 6)
Like.create(user_id: 5, post_id: 6)
Like.create(user_id: 1, post_id: 5)
Like.create(user_id: 6, post_id: 5)


