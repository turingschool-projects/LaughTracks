require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

Comedian.create(name: "Craig Ferguson", city: "Los Angeles", age:56 )
Comedian.create(name: "Mike Birbiglia", city: "Shrewsbury", age:40 )
Comedian.create(name: "Gabriel Iglesias", city: "San Diego", age:42)
Comedian.create(name: "Trevor Noah", city: "Johannesburg", age:34 )
Comedian.create(name: "Amy Schumer", city: "New York City", age:37 )
Comedian.create(name: "Dave Chappelle", city: "Washington", age:45 )
Comedian.create(name: "Ricky Gervais", city: "Reading", age:57 )
Comedian.create(name: "James Acaster", city: "Kattering", age:33 )
Comedian.create(name: "Iliza Shlesinger", city: "New York City", age:35 )
Comedian.create(name: "Adam Sandler", city: "New York City", age:52 )
Comedian.create(name: "Daniel Sloss", city: "Kingston Upon Thames", age:28 )
Comedian.create(name: "Demetri Martin", city: "New York City", age:45 )


chappelle = Comedian.find_by(name: "Dave Chappelle")

chappelle.specials.create(name: "Deep in the Heart of Texas: Dave Chappelle Live at Austin City Limits", run_time: 61, image:'/images/dave_special_1.jpg')
chappelle.specials.create(name: "The Age of Spin: Dave Chappelle Live at the Hollywood Palladium", run_time: 67, image:"https://m.media-amazon.com/images/M/MV5BZjJlNjg1NzktYTI2Zi00NjgyLWFiM2ItZTgzYWZhMmZiNDNlXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")
chappelle.specials.create(name: "Dave Chappelle: Equanimity", run_time: 64, image:"https://occ-0-116-114.1.nflxso.net/art/a343b/1b58ae89bc584e001dbeb9687105711f66ca343b.jpg")
chappelle.specials.create(name: "Dave Chappelle: The Bird Revelation", run_time: 60, image:"https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")

ferguson= Comedian.find_by(name: "Craig Ferguson")

ferguson.specials.create(name: "I'm Here to Help", run_time: 83, image:"https://images-na.ssl-images-amazon.com/images/I/51K4aRiln0L._SY355_.jpg")


birbiglia= Comedian.find_by(name: "Mike Birbiglia")

birbiglia.specials.create(name: "Thank God for Jokes", run_time: 70, image:"http://girthradio.com/wp-content/uploads/2017/03/Thank-God-for-Jokes.jpg")



iglesias= Comedian.find_by(name: "Gabriel Iglesias")

iglesias.specials.create(name: "I’m Sorry For What I Said When I Was Hungry", run_time: 70, image:"https://m.media-amazon.com/images/M/MV5BYjI3MGQyOWEtYzlmOC00OTYxLWIwNmItNTk3NDhiODRmNTc0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMzk2MTI0NzY@._V1_UY268_CR4,0,182,268_AL_.jpg")


noah= Comedian.find_by(name: "Trevor Noah")

noah.specials.create(name: "Son of Patricia", run_time: 63, image:"https://thecentraltrend.com/wp-content/uploads/2018/11/e8628dabaa081e80912c764ce86024673356398c.jpg")


schumer= Comedian.find_by(name: "Amy Schumer")

schumer.specials.create(name: "The Leather Special", run_time: 57, image:"https://m.media-amazon.com/images/M/MV5BMGMxYWY1MTktZDFlNC00YjdjLTk5MGMtODEwNTZiY2MxZjk1XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_UY268_CR4,0,182,268_AL_.jpg")


gervais= Comedian.find_by(name: "Ricky Gervais")

gervais.specials.create(name: "Humanity", run_time: 78, image:"https://m.media-amazon.com/images/M/MV5BZWEyYTc2ZGYtMTE4MS00YjJkLWFiNGMtNDg0Mjc4YjllZTFkXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_UY268_CR5,0,182,268_AL_.jpg")


acaster= Comedian.find_by(name: "James Acaster")

acaster.specials.create(name: "Recognise", run_time: 51, image:"https://m.media-amazon.com/images/M/MV5BNGQ1MTViN2UtNTY2MC00OGY5LWIxN2ItZTcwODIxZTM2YjlmXkEyXkFqcGdeQXVyMjIzODg1Mzk@._V1_SY1000_SX1000_AL_.jpg")
acaster.specials.create(name: "Represent", run_time: 53, image:"https://m.media-amazon.com/images/M/MV5BNGQ1MTViN2UtNTY2MC00OGY5LWIxN2ItZTcwODIxZTM2YjlmXkEyXkFqcGdeQXVyMjIzODg1Mzk@._V1_SY1000_SX1000_AL_.jpg")
acaster.specials.create(name: "Reset", run_time: 49, image:"https://m.media-amazon.com/images/M/MV5BNGQ1MTViN2UtNTY2MC00OGY5LWIxN2ItZTcwODIxZTM2YjlmXkEyXkFqcGdeQXVyMjIzODg1Mzk@._V1_SY1000_SX1000_AL_.jpg")
acaster.specials.create(name: "Recap", run_time: 53, image:"https://m.media-amazon.com/images/M/MV5BNGQ1MTViN2UtNTY2MC00OGY5LWIxN2ItZTcwODIxZTM2YjlmXkEyXkFqcGdeQXVyMjIzODg1Mzk@._V1_SY1000_SX1000_AL_.jpg")


shlesinger= Comedian.find_by(name: "Iliza Shlesinger")

shlesinger.specials.create(name: "Elder Millennial", run_time: 72, image:"https://m.media-amazon.com/images/M/MV5BNTE2ZmFmYTctOGQyNy00OGNkLTgxYWMtYTVlYzMyMzAyZGRiXkEyXkFqcGdeQXVyNzE3MDkxODc@._V1_.jpg")
shlesinger.specials.create(name: "War Paint", run_time: 75, image:"https://m.media-amazon.com/images/M/MV5BMjE0OTMxODYxNF5BMl5BanBnXkFtZTgwODgxOTE3NDE@._V1_.jpg")


sandler= Comedian.find_by(name: "Adam Sandler")

sandler.specials.create(name: "100% Fresh", run_time: 73, image:"https://m.media-amazon.com/images/M/MV5BNWNiYWJlNzQtYmMwMS00MjUyLWE4YjAtNDVjZWUwNzBjZDQ1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")


sloss= Comedian.find_by(name: "Daniel Sloss")

sloss.specials.create(name: "Jigsaw", run_time: 60, image:"https://m.media-amazon.com/images/M/MV5BYjMxNDg3YzktMDYwZC00NTZhLTlhYzYtZTM4ZTQ5MzIwYzYwXkEyXkFqcGdeQXVyMjMwNjEzMzM@._V1_.jpg")
sloss.specials.create(name: "Dark", run_time: 60, image:"https://m.media-amazon.com/images/M/MV5BYjMxNDg3YzktMDYwZC00NTZhLTlhYzYtZTM4ZTQ5MzIwYzYwXkEyXkFqcGdeQXVyMjMwNjEzMzM@._V1_.jpg")


martin= Comedian.find_by(name: "Demetri Martin")

martin.specials.create(name: "The Overthinker", run_time: 56, image:"https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_.jpg")
