# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jamil = User.create(username: "User1", first_name: "Jamil", last_name: "Shoptorshi",  password: "password")
susan = User.create(username: "User2", first_name: "Susan" , last_name: "Tan", password: "password")
joe = User.create(username: "User3", first_name: "Joe" , last_name: "Doe", password: "password")

movie1 = Movie.create(title: "The Lion King", year: 1994, synopsis: "Movie Plot Movie Plot Movie Plot 1")
movie2 = Movie.create(title: "Endgame", year: 2019, synopsis: "Movie Plot Movie Plot Movie Plot 2")
movie3 = Movie.create(title: "The Godfather", year: 1972, synopsis: "Movie Plot Movie Plot Movie Plot 3")

good_review = Review.create(content: "Wow, what a great movie. My mind was blown and it changed my life.", user_id: 1, movie_id: 1)
average_review = Review.create(content: "Meh, it was okay", user_id: 2, movie_id: 2)
bad_review = Review.create(content: "Terrible, terrible. Boooooooo Booooooooo", user_id: 3, movie_id: 3)


