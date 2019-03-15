require './app/models/comedian.rb'
require './app/models/special.rb'

Comedian.destroy_all
Special.destroy_all

dc = Comedian.create(
  name: "Dave Chappelle", 
  age: 45, 
  city: "Washington, D.C.", 
  head_shot: "https://media2.fdncms.com/portmerc/imager/u/original/10749418/mwbw-chappelle.jpg"
)
aw = Comedian.create(
  name: "Ali Wong", 
  age: 36, 
  city: "San Francisco", 
  head_shot: "https://res.cloudinary.com/sagacity/image/upload/c_crop,h_683,w_1024,x_0,y_0/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1080/ali-wong-2_wnlx6z.jpg"
)

is = Comedian.create(
  name: "Iliza Shlesinger", 
  age: 36, 
  city: "New York City", 
  head_shot: "https://brokeass2-9uzlt3u.netdna-ssl.com/wp-content/pictsnShit/2015/09/809D1ADA-C224-6B6B-C1067E721F959902.jpg"
)

bb = Comedian.create(
  name: "Bill Burr", 
  age: 50, 
  city: "Canton", 
  head_shot: "https://i.pinimg.com/474x/57/36/ca/5736ca9a980e89ba83729c494374bdf3--bill-burr-funny-people.jpg"
)

mm = Comedian.create(
  name: "Marc Maron", 
  age: 55, 
  city: "Jersey City", 
  head_shot: "https://s3.amazonaws.com/webassets.ticketmob.com/LS/images/ShowPosters/MMSethOlenick5.jpg"
)

ck = Comedian.create(
  name: "Louis C.K.", 
  age: 51, 
  city: "Washington, D.C.", 
  head_shot: "https://cdn.where.ca/wp-content/uploads/2012/09/Louis_CK_Headshot_Tor12.jpg"
)

aa = Comedian.create(
  name: "Aziz Ansari", 
  age: 36, 
  city: "Columbia", 
  head_shot: "https://files.list.co.uk/images/2019/01/14/aziz-ansari-b-and-white-LST324894.jpg"
)

js = Comedian.create(
  name: "Jerry Seinfeld", 
  age: 64, 
  city: "Portsmouth", 
  head_shot: "https://i.pinimg.com/474x/8e/cb/ab/8ecbab3c50c7d279b3ac940004302258--jerry-seinfeld-white-people.jpg"
)

cr = Comedian.create(
  name: "Chris Rock", 
  age: 54, 
  city: "Andrews", 
  head_shot: "https://voodoocomedy.com/wp-content/uploads/2015/06/Chris-Rock-Rolling-Out-8.jpeg"
)

jg = Comedian.create(
  name: "Jim Gaffigan", 
  age: 52, 
  city: "Elgin", 
  head_shot: "https://www.ocregister.com/wp-content/uploads/migration/ob3/ob36p9-b88758673z.120160729101521000ghghorhk.10.jpg?w=780"
)

em = Comedian.create(
  name: "Eddie Murphy", 
  age: 57, 
  city: "New York City", 
  head_shot: "https://i.pinimg.com/originals/d6/b7/21/d6b7211f77f385134bf1f705efe6f42c.jpg"
)

ch = Comedian.create(
  name: "Chelsea Handler", 
  age: 44, 
  city: "Livingston", 
  head_shot: "https://pictures.ozy.com/pictures/440x440/8/6/6/127866_chelsea.jpg"
)

dc.specials.create(
  title: "Equanimity & The Bird Revelation", 
  length: 49, 
  image_url: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg"
)
dc.specials.create(
  title: "Block Party", 
  length: 103, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMTI5ODAyNDM3OV5BMl5BanBnXkFtZTcwMjQ3NTIzMQ@@._V1_.jpg"
)
dc.specials.create(
  title: "Killin' Them Softly", 
  length: 57, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg"
)

aw.specials.create(
  title: "Baby Cobra", 
  length: 60, 
  image_url: "https://m.media-amazon.com/images/M/MV5BOWZmODIxMDEtZGY1My00OGEyLWE3NTQtN2Y4MTFkMzdlMTc4XkEyXkFqcGdeQXVyNjcwNDI1MDk@._V1_.jpg"
)
aw.specials.create(
  title: "Hard Knock Wife", 
  length: 64, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMWVkZDNjZTMtMTY0Yi00OGQ0LTliMDEtMWMxYzljYzZlYTY3XkEyXkFqcGdeQXVyMTEzNjA2NzM@._V1_.jpg"
)

is.specials.create(
  title: "Elder Millenials", 
  length: 72, 
  image_url: "https://m.media-amazon.com/images/M/MV5BNTE2ZmFmYTctOGQyNy00OGNkLTgxYWMtYTVlYzMyMzAyZGRiXkEyXkFqcGdeQXVyNzE3MDkxODc@._V1_.jpg"
)
is.specials.create(
  title: "Confirmed Kills", 
  length: 77, 
  image_url: "https://m.media-amazon.com/images/M/MV5BZGEyYjkwMWItM2EyZS00N2Q1LWIzZmQtZDg5Y2ZmMzdlNTgyXkEyXkFqcGdeQXVyNjgzNzA2NjU@._V1_.jpg"
)
is.specials.create(
  title: "Freezing Hot", 
  length: 71, 
  image_url: "https://m.media-amazon.com/images/M/MV5BNDE4ODU1NjY0OF5BMl5BanBnXkFtZTgwNTY1NzA0NDE@._V1_.jpg"
)

bb.specials.create(
  title: "I'm Sorry You Feel That Way ", 
  length: 80, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_SY1000_SX675_AL_.jpg"
)
bb.specials.create(
  title: "Why Do I Do This", 
  length: 55, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMjI3OTcxNTA1MV5BMl5BanBnXkFtZTgwNDY2MjA2MDE@._V1_.jpg"
)
bb.specials.create(
  title: "Walk Your Way Out", 
  length: 77, 
  image_url: "https://m.media-amazon.com/images/M/MV5BZWI3MDMzODQtNzVhOS00ZmUxLWI4YmYtMDUzZTg4OTA4ZDZkL2ltYWdlXkEyXkFqcGdeQXVyNDQzMDg4Nzk@._V1_.jpg"
)

mm.specials.create(
  title: "Too Real", 
  length: 70, 
  image_url: "https://m.media-amazon.com/images/M/MV5BNjFiMzU5OTMtMmYyMC00OWMxLTk0NTktNzA0MTY0YjkwNTFjXkEyXkFqcGdeQXVyNjc0NzYyMzI@._V1_.jpg"
)
mm.specials.create(
  title: "More Later", 
  length: 75, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMzA1ODIxNTMwOF5BMl5BanBnXkFtZTgwNjk2NzYxNzE@._V1_SY1000_CR0,0,678,1000_AL_.jpg"
)
mm.specials.create(
  title: "Thinky Pinky", 
  length: 95, 
  image_url: "https://m.media-amazon.com/images/M/MV5BOTBhZGE1MTEtNTU5Mi00NDM5LTkyMDgtNmNhYTljNWVlNjA3XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg"
)

ck.specials.create(
  title: "Live at the Beacon Theater", 
  length: 63, 
  image_url: "https://m.media-amazon.com/images/M/MV5BNzIxMTUxMjYzMV5BMl5BanBnXkFtZTcwMDYwMjE0Nw@@._V1_.jpg"
)
ck.specials.create(
  title: "Oh My God", 
  length: 58, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMjQ4NjQwOTYzNl5BMl5BanBnXkFtZTcwNjU2NjczOQ@@._V1_.jpg"
)
ck.specials.create(
  title: "Shameless", 
  length: 56, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMjE4NjE1ODI5Ml5BMl5BanBnXkFtZTcwMTgxNjc0MQ@@._V1_.jpg"
)

aa.specials.create(
  title: "Intimate Moments For A Sensual Evening", 
  length: 56, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMTQyMzEyMTI5MV5BMl5BanBnXkFtZTgwMzM0NDA2MDE@._V1_.jpg"
)
aa.specials.create(
  title: "Live at Madison Square Garden", 
  length: 56, 
  image_url: "https://m.media-amazon.com/images/M/MV5BZDI2OGFlZmYtZDVjYy00ODU3LTg2MWMtOTNmYWYyNTljOTE4XkEyXkFqcGdeQXVyNDg1NjA2OA@@._V1_.jpg"
)
aa.specials.create(
  title: "Dangerously Delicious", 
  length: 61, 
  image_url: "https://m.media-amazon.com/images/M/MV5BYzYzNzlhYTEtYTdkNS00NDdiLWE1N2MtM2ZlOTQzMjU5OTg5XkEyXkFqcGdeQXVyMTIxMDUyOTI@._V1_.jpg"
)

js.specials.create(
  title: "I'm Telling You For The Last Time", 
  length: 75, 
  image_url: "https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg"
)
js.specials.create(
  title: "Jerry Before Seinfeld", 
  length: 62, 
  image_url: "https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg"
)

cr.specials.create(
  title: "Tamborine", 
  length: 64, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMGQ5NWJmMDktMDMxNS00ZWQzLWEzNjgtZWU5NjE0ZmZjYjc0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg"
)
cr.specials.create(
  title: "Never Scared", 
  length: 80, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMTlhYzMzNzItNWMyYy00ZGRlLWI1N2UtOGI2YjIwOGEwYTViXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg"
)
cr.specials.create(
  title: "Bigger and Blacker", 
  length: 65, 
  image_url: "https://m.media-amazon.com/images/M/MV5BODQzOWExYjktZDQ2OC00YTA5LWI3YzctMDFjNjc3ZTM5NTA0XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg"
)

jg.specials.create(
  title: "Beyond The Pale", 
  length: 72, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMTk3NjU2ODY5NF5BMl5BanBnXkFtZTgwNTEyODkwMzE@._V1_.jpg"
)
jg.specials.create(
  title: "Obsessed", 
  length: 60, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMjA1MDc3NzkyNl5BMl5BanBnXkFtZTgwNDYzNjM3MTE@._V1_.jpg"
)
jg.specials.create(
  title: "Cinco", 
  length: 73, 
  image_url: "https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg"
)

em.specials.create(
  title: "Delirious", 
  length: 69, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMTQ5MDcyODU0Nl5BMl5BanBnXkFtZTcwMTgxNjA0MQ@@._V1_.jpg"
)
em.specials.create(
  title: "Raw", 
  length: 93, 
  image_url: "https://m.media-amazon.com/images/M/MV5BOWEwYTk4YTgtZGVjNi00MmI0LTkwOTItOWUxYzBlN2YwZWFkXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg"
)

ch.specials.create(
  title: "Uganda Be Kidding Me", 
  length: 71, 
  image_url: "https://m.media-amazon.com/images/M/MV5BMTgzOTI0NDg2N15BMl5BanBnXkFtZTgwMjYzODY3MjE@._V1_SY1000_CR0,0,685,1000_AL_.jpg"
)
ch.specials.create(
  title: "Chelsea Does", 
  length: 70, 
  image_url: "https://m.media-amazon.com/images/M/MV5BZmRjYWI3MzUtOGFmNy00NTNjLTkyNTMtOTE3MTk2N2FkMDRhXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_SY1000_CR0,0,733,1000_AL_.jpg"
)









