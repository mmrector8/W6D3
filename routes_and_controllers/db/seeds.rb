# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create({username: 'Nicola Samori'})
user2 = User.create({username: 'Natty'})
user3 = User.create({username: 'Morgan'})
user4 = User.create({username: 'Mario'})
user5 = User.create({username: 'Shaye'})
user6 = User.create({username: 'plants'})

art1 = Artwork.create({title: 'Worm Shepherd', image_url: 'lolololol.com', artist_id: user1.id})
art2 = Artwork.create({title: 'Daisies', image_url: 'daisies.com', artist_id: user3.id})
art3 = Artwork.create({title: 'Garden of Earthly Delights', image_url: 'https://en.wikipedia.org/wiki/The_Garden_of_Earthly_Delights', artist_id: user6.id})
art4 = Artwork.create({title: 'Melting Clocks', image_url: 'https://en.wikipedia.org/wiki/The_Persistence_of_Memory', artist_id: user5.id})
art5 = Artwork.create({title: 'Plant painting', image_url: 'plants.com', artist_id: user6.id})
art6= Artwork.create({title: 'antihero', image_url: 'taylorswift.com', artist_id: user4.id})
art7 = Artwork.create({title: 'The Angel of History', image_url: 'https://en.wikipedia.org/wiki/Angelus_Novus', artist_id: user3.id})
art8= Artwork.create({title: 'i love jack harlow even though he is not a good artist', image_url: 'jackharlow.com', artist_id: user5.id})
art9 = Artwork.create({title: 'Self Portrait with Halo and Snake', image_url: 'selfportrait.com', artist_id: user1.id})

share1 = ArtworkShare.create({artwork_id: art6.id, viewer_id: user5.id})
share2 = ArtworkShare.create({artwork_id: art1.id, viewer_id: user6.id})
share3 = ArtworkShare.create({artwork_id: art3.id, viewer_id: user2.id})
share4 = ArtworkShare.create({artwork_id: art5.id, viewer_id: user4.id})
share5 = ArtworkShare.create({artwork_id: art8.id, viewer_id: user3.id})
share6 = ArtworkShare.create({artwork_id: art7.id, viewer_id: user1.id})

comment1 = Comment.create({body:"And that's the waaaaaay the news goes!", artwork_id: art6.id, author_id: user5.id})


comment2 = Comment.create({body: "I dont buy it", artwork_id: art8.id,  author_id: user5.id})

comment3 = Comment.create({body:"Gretchen, stop trying to make fetch happen.", artwork_id: art3.id, author_id: user2.id})
comment4 = Comment.create({body:"I hope this doesn't awaken anything in me.", artwork_id: art2.id, author_id: user1.id})

comment5 = Comment.create({body: "have you watched the show Hot Ones", artwork_id: art2.id, author_id: user3.id})
comment6 = Comment.create({body: "WE ARE GREAT AT ROUTES AND CONTROLLERS", artwork_id: art2.id, author_id: user3.id})
comment7 = Comment.create({body: "art is ...... a myster", artwork_id: art5.id,  author_id: user3.id})

comment8 = Comment.create({body:"I hope this doesn't awaken anything in me.", artwork_id: art2.id, author_id: user1.id})
comment9 = Comment.create({body:"MEGAN THE STALLION", artwork_id: art2.id, author_id: user1.id})
comment10 = Comment.create({body:"JOEY DOESN'T SHARE FOOD.", artwork_id: art2.id, author_id: user2.id})
comment11 = Comment.create({body:"You are human tennis elbow! You are a pizza burn on the roof of the world's mouth! You are the opposite of Batman!", artwork_id: art4.id, author_id: user3.id})


