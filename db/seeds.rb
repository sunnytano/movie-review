# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Review.destroy_all
Movie.destroy_all

jamil = User.create(username: "User1", first_name: "Jamil", last_name: "Shoptorshi",  password: "password")
susan = User.create(username: "User2", first_name: "Susan" , last_name: "Tan", password: "password")
joe = User.create(username: "User3", first_name: "Joe" , last_name: "Doe", password: "password")

good_review = Review.create(content: "Wow, what a great movie. My mind was blown and it changed my life.", user_id: 1, movie_id: 1)
average_review = Review.create(content: "Meh, it was okay", user_id: 2, movie_id: 2)
bad_review = Review.create(content: "Terrible, terrible. Boooooooo Booooooooo", user_id: 3, movie_id: 3)

movie1 = Movie.create(title: "Endgame", year: 2019, synopsis: "The Avengers assemble once more in order to undo Thanos' actions and restore order to the universe.", video: "https://www.youtube.com/embed/TcMBFSGVi1c")
movie2 = Movie.create(title: "Captain Marvel", year: 2019, synopsis: "Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.", video: "https://www.youtube.com/embed/0LHxvxdRnYc")
movie3 = Movie.create(title: "Shazam", year: 2019, synopsis: "We all have a superhero inside us, it just takes a bit of magic to bring it out. By shouting out one word - SHAZAM. - this streetwise fourteen-year-old foster kid can turn into the grown-up superhero Shazam.", video: "https://www.youtube.com/embed/uilJZZ_iVwY")
movie4 = Movie.create(title: "Dumbo", year: 2019, synopsis: "A young elephant, whose oversized ears enable him to fly, helps save a struggling circus, but when the circus plans a new venture, Dumbo and his friends discover dark secrets beneath its shiny veneer.", video: "https://www.youtube.com/embed/7NiYVoqBt-8")
movie5 = Movie.create(title: "Little", year: 2019, synopsis: "A woman is transformed into her younger self at a point in her life when the pressures of adulthood become too much to bear.", video: "https://www.youtube.com/embed/5HdNhpeI1g4")
movie6 = Movie.create(title: "Long Shot", year: 2019, synopsis: "When Fred Flarsky reunites with his first crush, one of the most influential women in the world, Charlotte Field, he charms her. As she prepares to make a run for the Presidency, Charlotte hires Fred as her speechwriter and sparks fly.", video: "https://www.youtube.com/embed/S5jiaHvx-kY")
movie7 = Movie.create(title: "Uglydolls", year: 2019, synopsis: "An animated adventure in which the free-spirited UglyDolls confront what it means to be different, struggle with a desire to be loved, and ultimately discover who you truly are is what matters most.", video: "https://www.youtube.com/embed/qqlEGYo0xCA")
movie8 = Movie.create(title: "Breakthrough", year: 2019, synopsis: "When Joyce Smith's adopted son John falls through an icy Missouri lake, all hope seems lost. But as John lies lifeless, Joyce refuses to give up. Her steadfast belief inspires those around her to continue to pray for John's recovery.", video: "https://www.youtube.com/embed/6Ui6m_eEEOI")
movie9 = Movie.create(title: "The Hustle", year: 2019, synopsis: "Anne Hathaway and Rebel Wilson star as female scam artists, one low rent and the other high class, who team up to take down the dirty rotten men who have wronged them.", video: "https://www.youtube.com/embed/Of52MNnXoxU")
movie10 = Movie.create(title: "Pokemon: Detective Pikachu", year: 2019, synopsis: "In a world where people collect Pokémon to do battle, a boy comes across an intelligent talking Pikachu who seeks to be a detective.", video: "https://www.youtube.com/embed/1roy4o4tqQM")
movie11 = Movie.create(title: "POMS", year: 2019, synopsis: "A woman moves to a retirement community and forms a cheerleading squad with her fellow residents.", video: "https://www.youtube.com/embed/Sv89kRmoSlg")
movie12 = Movie.create(title: "Tolkein", year: 2019, synopsis: "J.R.R. Tolkien writes the classic fantasy novels The Hobbit and The Lord of the Rings.", video: "https://www.youtube.com/embed/wZ1vn85iQRE")
movie13 = Movie.create(title: "The Professor and the Mad Man", year: 2019, synopsis: "Professor James Murray begins work compiling words for the first edition of the Oxford English Dictionary in the mid 19th century, and receives over 10,000 entries from a patient at Broadmoor Criminal Lunatic Asylum, Dr. William Minor.", video: "https://www.youtube.com/embed/ESYU-bkmxuI")
movie14 = Movie.create(title: "The Biggest Little Farm", year: 2019, synopsis: "Two dreamers and a dog embark on an odyssey to bring harmony to their lives and to the land. As their plan to create perfect harmony takes a series of wild turns, they will have to reach a greater understanding of the intricacies and wisdom of nature.", video: "https://www.youtube.com/embed/E0SsZIDJ0O0")
movie15 = Movie.create(title: "Amazing Grace", year: 2019, synopsis: "A documentary presenting the live recording of Aretha Franklin's album Amazing Grace at The New Bethel Baptist Church in Watts, Los Angeles in January 1972.", video: "https://www.youtube.com/embed/PPcrD-wD_LY")
movie16 = Movie.create(title: "The Intruder", year: 2019, synopsis: "A psychological thriller about a young married couple who buys a beautiful Napa Valley house on several acres of land only to find that the man they bought it from refuses to let go of the property.", video: "https://www.youtube.com/embed/1K7y0zsuPic")
movie17 = Movie.create(title: "How To Train Your Dragon: The Hidden World", year: 2019, synopsis: "In this next chapter, Hiccup and Toothless will finally discover their true destinies: the village chief as ruler of Berk alongside Astrid, and the dragon as leader of his own kind.", video: "https://www.youtube.com/embed/naW9U8MiUY0")
movie18 = Movie.create(title: "Us", year: 2019, synopsis: "A couple and their two children fight for survival against four strangers who look just like them.", video: "https://www.youtube.com/embed/hNCmb-4oXJA")
movie19 = Movie.create(title: "Penguins", year: 2019, synopsis: "An Adélie penguin named Steve joins millions of fellow males in the icy Antarctic spring on a quest to build a suitable nest, find a life partner and start a family. None of it comes easily for him, especially considering he's targeted by everything from killer whales to leopard seals.
", video: "https://www.youtube.com/embed/VubxHFy7ocE")
movie20 = Movie.create(title: "Taxi Driver", year: 1976, synopsis: "Suffering from insomnia, disturbed loner Travis Bickle (Robert De Niro) takes a job as a New York City cabbie, haunting the streets nightly, growing increasingly detached from reality as he dreams of cleaning up the filthy city.", video: "https://www.youtube.com/embed/UUxD4-dEzn0")
movie21 = Movie.create(title: "Forrest Gump", year: 1994, synopsis: "Slow-witted Forrest Gump (Tom Hanks) has never thought of himself as disadvantaged, and thanks to his supportive mother (Sally Field), he leads anything but a restricted life.", video: "https://www.youtube.com/embed/bLvqoHBptjg")
movie22 = Movie.create(title: "Titanic", year: 1997, synopsis: "An epic, action-packed romance set against the ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built.", video: "https://www.youtube.com/embed/tXbGHqiAmME")
movie23 = Movie.create(title: "Fight Club", year: 1999, synopsis: "A depressed man (Edward Norton) suffering from insomnia meets a strange soap salesman named Tyler Durden (Brad Pitt) and soon finds himself living in his squalid house after his perfect apartment is destroyed.", video: "https://www.youtube.com/embed/qtRKdVHc-cE")
movie24 = Movie.create(title: "Avatar", year: 2009, synopsis: "On the lush alien world of Pandora live the Na'vi, beings who appear primitive but are highly evolved. Because the planet's environment is poisonous, human/Na'vi hybrids, called Avatars, must link to human minds to allow for free movement on Pandora. ", video: "https://www.youtube.com/embed/6ziBFh3V1aM")
movie25 = Movie.create(title: "Little Mermaid", year: 1989, synopsis: "In Disney's beguiling animated romp, rebellious 16-year-old mermaid Ariel (Jodi Benson) is fascinated with life on land. On one of her visits to the surface, which are forbidden by her controlling father, King Triton, she falls for a human prince.", video: "https://www.youtube.com/embed/ZGZX5-PAwR8")
movie26 = Movie.create(title: "Taken", year: 2009, synopsis: "Bryan Mills (Liam Neeson), a former government operative, is trying to reconnect with his daughter, Kim (Maggie Grace). Then his worst fears become real when sex slavers abduct Kim and her friend shortly after they arrive in Paris for vacation. ", video: "https://www.youtube.com/embed/uPJVJBm9TPA")
movie27 = Movie.create(title: "The Godfather", year: 1972, synopsis: "Widely regarded as one of the greatest films of all time, this mob drama, based on Mario Puzo's novel of the same name, focuses on the powerful Italian-American crime family of Don Vito Corleone (Marlon Brando). ", video: "https://www.youtube.com/embed/sY1S34973zA")
movie28 = Movie.create(title: "Goodfellas", year: 1990, synopsis: "A young man grows up in the mob and works very hard to advance himself through the ranks. He enjoys his life of money and luxury, but is oblivious to the horror that he causes. A drug addiction and a few mistakes ultimately unravel his climb to the top. ", video: "https://www.youtube.com/embed/h3QpxNI-PtE")
movie29 = Movie.create(title: "Home Alone", year: 1990, synopsis: "When bratty 8-year-old Kevin acts out the night before a family trip to Paris, his mother makes him sleep in the attic. After the McCallisters mistakenly leave for the airport without Kevin, he awakens to an empty house and assumes his wish to have no family has come true.", video: "https://www.youtube.com/embed/jEDaVHmw7r4")
movie30 = Movie.create(title: "The Lion King", year: 1994, synopsis: "This Disney animated feature follows the adventures of the young lion Simba, the heir of his father, Mufasa. Simba's wicked uncle, Scar, plots to usurp Mufasa's throne by luring father and son into a stampede of wildebeests. ", video: "https://www.youtube.com/embed/_ujGv5dhGfk")


puts "done!"


