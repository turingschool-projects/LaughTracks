require '../app/models/comedian.rb'
require '../app/models/special.rb'

Comedian.destroy_all
Special.destroy_all

Comedian.create(name: "John Pinette", age: 50, city: "Pittsburgh")
Comedian.create(name: "Jon Stewart", age: 56, city: "Lawrenceville")
Comedian.create(name: "Tig Notaro", age: 47, city: "Jackson")
Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington, D.C")
Comedian.create(name: "Chris Rock", age: 53, city: "Andrews")
Comedian.create(name: "Demetri Martin", age: 45, city: "New York")
Comedian.create(name: "John Mulaney", age: 39, city: "New York")
Comedian.create(name: "Hasan Minhaj", age: 33, city: "Davis")
Comedian.create(name: "Lewis Black", age: 70, city: "Silver Spring")
Comedian.create(name: "Aziz Ansari", age: 34, city: "LA")

#pinette specials
Special.create(name: "Still Hungry", length: 70, image: "https://m.media-amazon.com/images/M/MV5BMTkzNzM3MzMwMV5BMl5BanBnXkFtZTgwOTAxNjA2MDE@._V1_UY1200_CR135,0,630,1200_AL_.jpg", comedian_id: 1)

#stewart specials
Special.create(name: "Unleavened", length: 70, image: "https://img.reelgood.com/content/movie/3fd29642-dfd8-40f3-aec2-28bd2d6f4dff/poster-780.jpg", comedian_id: 3)

#tig specials
Special.create(name:"Tig Notaro: Boyish Girl Interrupted", length: 70, image: "https://m.media-amazon.com/images/M/MV5BMjc4Mzc3MDQwOF5BMl5BanBnXkFtZTgwMTI4NzcwNzE@._V1_.jpg", comedian_id: 3)
Special.create(name:"Tig Notaro: Happy To Be Here", length: 70, image: "https://m.media-amazon.com/images/M/MV5BNWQxMDgzYjAtZTZkOS00MWM2LWIxNTUtZTUwYmUxMWQ0NzM1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 3)

#dave specials
Special.create(name: "Equinimity & The Bird Revelation", length: 70, image: "https://d3nl7vnltpuheg.cloudfront.net/2bfea33aee2f11e787ce0a842dabfc46/media/img/7d275390b54bc84a.jpeg", comedian_id: 4)

#chris specials
Special.create(name: "Tamborine", length: 70, image: "https://miro.medium.com/max/852/0*-mI9KoQ6PHEtZ4TN.", comedian_id: 5)
Special.create(name: "Kill the Messenger", length: 70, image: "https://upload.wikimedia.org/wikipedia/en/thumb/5/59/Chris_Rock_Kill_the_Messenger_poster.jpg/250px-Chris_Rock_Kill_the_Messenger_poster.jpg", comedian_id: 5)
Special.create(name: "Never Scared", length: 70, image: "https://images-na.ssl-images-amazon.com/images/I/61OElXVcnEL.jpg", comedian_id: 5)

#martin specials
Special.create(name: "The Overthinker", length: 70, image: "https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 6)

#mulaney specials
Special.create(name: "Kid Georgeous", length: 70, image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2018%2F11%2Fjohn-mulaney-kid-gorgeous-radio-city-top-10-comedy-best-of-culture-2018.jpg&w=1600&c=sc&poi=face&q=70", comedian_id: 7)
Special.create(name: "New in Town", length: 70, image: "http://www.slate.com/content/dam/slate/articles/arts/interrogation/2012/02/120202_INTERROGATION_johnMulaney.jpg.CROP.rectangle3-large.jpg", comedian_id: 7)

#hasan specials
Special.create(name: "Homecoming King", length: 70, image: "https://upload.wikimedia.org/wikipedia/en/thumb/e/e5/Hasan_Minhaj%2C_Homecoming_King.jpeg/220px-Hasan_Minhaj%2C_Homecoming_King.jpeg", comedian_id: 8)

#lewis specials
Special.create(name: "In God We Rust", length: 70, image: "https://images-na.ssl-images-amazon.com/images/I/51JtsXrDgwL._SY450_.jpg", comedian_id: 9)
Special.create(name: "Red White & Screwed", length: 70, image: "https://m.media-amazon.com/images/M/MV5BMTc4NjUzNjg5OV5BMl5BanBnXkFtZTcwMzI4MzUzMQ@@._V1_UY1200_CR86,0,630,1200_AL_.jpg", comedian_id: 9)

#aziz specials
Special.create(name:"Buried Alive", length: 70, image: "https://upload.wikimedia.org/wikipedia/en/thumb/9/94/Aziz_Ansari-Buried_Alive.jpg/220px-Aziz_Ansari-Buried_Alive.jpg", comedian_id: 10)
