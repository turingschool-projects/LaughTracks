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
  city: "San Francisco, CA", 
  head_shot: "https://res.cloudinary.com/sagacity/image/upload/c_crop,h_683,w_1024,x_0,y_0/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1080/ali-wong-2_wnlx6z.jpg"
)

is = Comedian.create(
  name: "Iliza Shlesinger", 
  age: 36, 
  city: "New York City, NY", 
  head_shot: "https://brokeass2-9uzlt3u.netdna-ssl.com/wp-content/pictsnShit/2015/09/809D1ADA-C224-6B6B-C1067E721F959902.jpg"
)

bb = Comedian.create(
  name: "Bill Burr", 
  age: 50, 
  city: "Canton, MA", 
  head_shot: "https://i.pinimg.com/474x/57/36/ca/5736ca9a980e89ba83729c494374bdf3--bill-burr-funny-people.jpg"
)

mm = Comedian.create(
  name: "Marc Maron", 
  age: 55, 
  city: "Jersey City, NJ", 
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
  city: "Columbia, S.C.", 
  head_shot: "https://files.list.co.uk/images/2019/01/14/aziz-ansari-b-and-white-LST324894.jpg"
)

js = Comedian.create(
  name: "Jerry Seinfeld", 
  age: 64, 
  city: "Portsmouth, V.A.", 
  head_shot: "https://i.pinimg.com/474x/8e/cb/ab/8ecbab3c50c7d279b3ac940004302258--jerry-seinfeld-white-people.jpg"
)

cr = Comedian.create(
  name: "Chris Rock", 
  age: 54, 
  city: "Andrews, S.C.", 
  head_shot: "https://voodoocomedy.com/wp-content/uploads/2015/06/Chris-Rock-Rolling-Out-8.jpeg"
)

jg = Comedian.create(
  name: "Jim Gaffigan", 
  age: 52, 
  city: "Elgin, I.L.", 
  head_shot: "https://www.ocregister.com/wp-content/uploads/migration/ob3/ob36p9-b88758673z.120160729101521000ghghorhk.10.jpg?w=780"
)

em = Comedian.create(
  name: "Eddie Murphy", 
  age: 57, 
  city: "New York City, N.Y.", 
  head_shot: "https://i.pinimg.com/originals/d6/b7/21/d6b7211f77f385134bf1f705efe6f42c.jpg"
)

ch = Comedian.create(
  name: "Chelsea Handler", 
  age: 44, 
  city: "Livingston, N.J.", 
  head_shot: "https://pictures.ozy.com/pictures/440x440/8/6/6/127866_chelsea.jpg"
)

# dc.specials.create(
#   title: "Equanimity & The Bird Revelation", 
#   length: 49, 
#   image_url: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg"
# )
# dc.specials.create(
#   title: "Block Party", 
#   length: 103, 
#   image_url: "https://m.media-amazon.com/images/M/MV5BMTI5ODAyNDM3OV5BMl5BanBnXkFtZTcwMjQ3NTIzMQ@@._V1_.jpg"
# )
# dc.specials.create(
#   title: "Killin' Them Softly", 
#   length: 57, 
#   image_url: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg"
# )

# aw.specials.create(
#   title: "Baby Cobra", 
#   length: 60, 
#   image_url: "https://m.media-amazon.com/images/M/MV5BOWZmODIxMDEtZGY1My00OGEyLWE3NTQtN2Y4MTFkMzdlMTc4XkEyXkFqcGdeQXVyNjcwNDI1MDk@._V1_.jpg"
# )
# aw.specials.create(
#   title: "Hard Knock Wife", 
#   length: 64, 
#   image_url: "https://m.media-amazon.com/images/M/MV5BMWVkZDNjZTMtMTY0Yi00OGQ0LTliMDEtMWMxYzljYzZlYTY3XkEyXkFqcGdeQXVyMTEzNjA2NzM@._V1_.jpg"
# )

# is.specials.create(
#   title: "Elder Millenials", 
#   length: 72, 
#   image_url: "https://m.media-amazon.com/images/M/MV5BNTE2ZmFmYTctOGQyNy00OGNkLTgxYWMtYTVlYzMyMzAyZGRiXkEyXkFqcGdeQXVyNzE3MDkxODc@._V1_.jpg"
# )
# is.specials.create(
#   title: "Confirmed Kills", 
#   length: 77, 
#   image_url: "https://m.media-amazon.com/images/M/MV5BZGEyYjkwMWItM2EyZS00N2Q1LWIzZmQtZDg5Y2ZmMzdlNTgyXkEyXkFqcGdeQXVyNjgzNzA2NjU@._V1_.jpg"
# )
# is.specials.create(
#   title: "Freezing Hot", 
#   length: 71, 
#   image_url: "https://m.media-amazon.com/images/M/MV5BNDE4ODU1NjY0OF5BMl5BanBnXkFtZTgwNTY1NzA0NDE@._V1_.jpg"
# )

# bb.specials.create(
#   title: "Freezing Hot", 
#   length: 71, 
#   image_url: "https://m.media-amazon.com/images/M/MV5BNDE4ODU1NjY0OF5BMl5BanBnXkFtZTgwNTY1NzA0NDE@._V1_.jpg"
# )



