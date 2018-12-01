require "./app/models/comedian"
require "./app/models/special"

Comedian.destroy_all
Special.destroy_all

comedian_1 = Comedian.create(name: "John Mulaney", age: 36, hometown: "Chicago")
comedian_2 = Comedian.create(name: "Aziz Ansari", age: 35, hometown: "Columbia")
comedian_3 = Comedian.create(name: "Jim Gaffigan", age: 50, hometown: "Chicago")
comedian_4 = Comedian.create(name: "Eddie Izzard", age: 56, hometown: "London")
comedian_5 = Comedian.create(name: "Greg Proops", age: 59, hometown: "Phoenix")
comedian_6 = Comedian.create(name: "Colin Mochrie", age: 60, hometown: "London")
comedian_7 = Comedian.create(name: "John Hodgman", age: 47, hometown: "Brookline")
comedian_8 = Comedian.create(name: "Anjelah Johnson", age: 36, hometown: "San Francisco")
comedian_9 = Comedian.create(name: "Mike Birbiglia", age: 40, hometown: "Shrewsbury")
comedian_10 = Comedian.create(name: "Mitch Hedberg", age: 36, hometown: "Saint Paul")
comedian_11 = Comedian.create(name: "Alex Wong", age: 36, hometown: "San Francisco")
comedian_12 = Comedian.create(name: "Brian Reagan", age: 60, hometown: "Miami")

comedian_1.specials.create(title: "Kid Gorgeous", runtime: 65, image_file: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
comedian_1.specials.create(title: "New In Town", runtime: 60, image_file: "https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg")
comedian_2.specials.create(title: "Buried Alive", runtime: 80, image_file: "https://m.media-amazon.com/images/M/MV5BNzAyNTYyODI5Nl5BMl5BanBnXkFtZTgwMzkwMzY1MDE@._V1_UY268_CR0,0,182,268_AL_.jpg")
comedian_2.specials.create(title: "Dangerously Delicious", runtime: 61, image_file: "https://m.media-amazon.com/images/M/MV5BYzYzNzlhYTEtYTdkNS00NDdiLWE1N2MtM2ZlOTQzMjU5OTg5XkEyXkFqcGdeQXVyMTIxMDUyOTI@._V1_UY268_CR3,0,182,268_AL_.jpg")
comedian_3.specials.create(title: "Cinco", runtime: 73, image_file: "https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
comedian_3.specials.create(title: "Noble Ape", runtime: 90, image_file: "https://m.media-amazon.com/images/M/MV5BODAyZjM3OGMtZmY2Zi00YjM0LTlhZDYtNTZmYmM2ODQ4NTNiXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
comedian_4.specials.create(title: "Live at Madison Square Garden", runtime: 86, image_file: "https://m.media-amazon.com/images/M/MV5BZTBmNTNkNTktOTk5Mi00OTIzLTkxMjEtNWQ0ZmNjMjg4ZmQwXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")
comedian_4.specials.create(title: "Force Majeure", runtime: 85, image_file: "https://m.media-amazon.com/images/M/MV5BMTc5NzY1ODA1OV5BMl5BanBnXkFtZTgwMDYwNTE0MzE@._V1_UY268_CR9,0,182,268_AL_.jpg")
comedian_5.specials.create(title: "Live at Musso and Frank Grill", runtime: 60, image_file: "https://i0.wp.com/www.gregproops.com/blog/wp-content/uploads/2015/01/mussoandfrank.jpg?zoom=2&resize=510%2C120")
comedian_6.specials.create(title: "Not Made Up Special Name", runtime: 6, image_file: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGNQkGQY7LRF6inHp5IQbRRrkfvT9Oxk0i-cDUkX28oxIHmKin")
comedian_7.specials.create(title: "Ragnarok", runtime: 67, image_file: "https://m.media-amazon.com/images/M/MV5BNTM0M2M0NGMtOTVkNy00MGVkLTg4NDktYTE2NDk0ODU4OWMwXkEyXkFqcGdeQXVyMTQyMDU4Njg@._V1_UY268_CR4,0,182,268_AL_.jpg")
comedian_8.specials.create(title: "Not Fancy", runtime: 90, image_file: "https://m.media-amazon.com/images/M/MV5BODVkNDE4ZTQtNTcyMS00OTI4LWI4NjMtYmI2ZjVlNGMxZTNjXkEyXkFqcGdeQXVyMTQxMzY0ODY@._V1_UY268_CR4,0,182,268_AL_.jpg")
comedian_9.specials.create(title: "Thank God For Jokes", runtime: 70, image_file: "https://m.media-amazon.com/images/M/MV5BNjM1NjNjOTUtMzk3Yi00NzZmLTg3NTQtZjE0N2U1MTYyZTViXkEyXkFqcGdeQXVyNDQyODU5MDQ@._V1_UX182_CR0,0,182,268_AL_.jpg")
comedian_10.specials.create(title: "Comedy Central Presents", runtime: 30, image_file: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGHGPBMGUNy3WnCVWPyiCQxtRZ_G4KC3Cjv1JiCmsq6rM6lk3q-g")
comedian_11.specials.create(title: "Hardknock Wife", runtime: 64, image_file: "https://m.media-amazon.com/images/M/MV5BMWVkZDNjZTMtMTY0Yi00OGQ0LTliMDEtMWMxYzljYzZlYTY3XkEyXkFqcGdeQXVyMTEzNjA2NzM@._V1_UX182_CR0,0,182,268_AL_.jpg")
comedian_12.specials.create(title: "Brian Reagan", runtime: 60, image_file: "https://m.media-amazon.com/images/M/MV5BMTYyNDE3NTc2Nl5BMl5BanBnXkFtZTcwODM4MzA1MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
