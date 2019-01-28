require_relative '../app/models/comedian'
require_relative '../app/models/special'

Comedian.destroy_all
Special.destroy_all

@comic_1 = Comedian.create(name: 'Joe Rogan', age: 51, city: 'Los Angeles')
@comic_2 = Comedian.create(name: 'Tina Fey', age: 48, city: 'New York')
@comic_3 = Comedian.create(name: 'Sarah Silverman', age: 48, city: 'Los Angeles')
@comic_4 = Comedian.create(name: 'Mike Birbiglia', age: 40, city: 'New York')
@comic_5 = Comedian.create(name: 'Maria Bamford', age: 48, city: 'Los Angeles')
@comic_6 = Comedian.create(name: 'Fred Armisen', age: 52, city: 'Portland')
@comic_7 = Comedian.create(name: 'John Mulaney', age: 36, city: 'New York')
@comic_8 = Comedian.create(name: 'Hannibal Buress', age: 35, city: 'Chicago')
@comic_9 = Comedian.create(name: 'Travor Noah', age: 34, city: 'New York')

@comic_1.specials.create(name: 'Triggered', runtime: 63, thumbnail: "https://m.media-amazon.com/images/M/MV5BYTE0M2FkNGMtYjYxNi00MDRkLWE0YWUtNWI4NWU3NWIzMWIzXkEyXkFqcGdeQXVyMzE5NzI0NjE@._V1_.jpg")
@comic_1.specials.create(name: 'Strange Times', runtime: 63, thumbnail: "https://m.media-amazon.com/images/M/MV5BNzc2Mzg5YmMtMzM1NC00NDgwLTljYWQtZDdkNzBmNjZkNmJhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")

@comic_2.specials.create(name: 'Stand for Rights', runtime: 205, thumbnail: "https://m.media-amazon.com/images/M/MV5BNzYyNzBhYWEtMjc5ZC00NGI5LWE4NmItMWZiNGNiMmU1N2Y5XkEyXkFqcGdeQXVyNzcyMzczMg@@._V1_SY1000_CR0,0,777,1000_AL_.jpg")

@comic_3.specials.create(name: 'We Are Miracles', runtime: 53, thumbnail: "https://m.media-amazon.com/images/M/MV5BODU5MWI2YWEtNTQ3Ny00OWQ3LThkNTUtYzdiNDVjNDczM2NiXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_SX675_AL_.jpg")
@comic_3.specials.create(name: 'A Speck of Dust', runtime: 71, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjYwYjhjM2EtYjgwYS00YjkyLTllMjQtZGM1ZmFkMTQ1YmFmXkEyXkFqcGdeQXVyMzUwMjc0NTU@._V1_.jpg")

@comic_4.specials.create(name: "What I Should Have Said Was Nothing", runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTk0NzY2NzM5Ml5BMl5BanBnXkFtZTcwNjE2Mjg2MQ@@._V1_SY1000_CR0,0,704,1000_AL_.jpg")
@comic_4.specials.create(name: "Sleepwalk with Me", runtime: 81, thumbnail: "http://www.gstatic.com/tv/thumb/v22vodart/9028719/p9028719_v_v8_ab.jpg")
@comic_4.specials.create(name: "My Girlfriend's Boyfriend", runtime: 76, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTU0OTMzNDUyNV5BMl5BanBnXkFtZTgwMDYxNjkyMjE@._V1_.jpg")
@comic_4.specials.create(name: "Thank God for Jokes", runtime: 70, thumbnail: "http://girthradio.com/wp-content/uploads/2017/03/Thank-God-for-Jokes.jpg")

@comic_5.specials.create(name: "The Special Special Special!", runtime: 49, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjM0MjEyMjM0OF5BMl5BanBnXkFtZTcwMDQ3NzQxOQ@@._V1_SY1000_CR0,0,652,1000_AL_.jpg")
@comic_5.specials.create(name: "Old Baby", runtime: 64, thumbnail: "https://occ-0-999-1001.1.nflxso.net/art/5419b/3a68fcb9e441a8ae7b049043e744c274f4a5419b.jpg")

@comic_6.specials.create(name: 'Stand for Rights', runtime: 205, thumbnail: "https://m.media-amazon.com/images/M/MV5BNzYyNzBhYWEtMjc5ZC00NGI5LWE4NmItMWZiNGNiMmU1N2Y5XkEyXkFqcGdeQXVyNzcyMzczMg@@._V1_SY1000_CR0,0,777,1000_AL_.jpg")
@comic_6.specials.create(name: 'Standup for Drummers', runtime: 65, thumbnail: "https://m.media-amazon.com/images/M/MV5BZjgwZjQ5OTgtMWY0MC00YTQ5LWE2MzEtMWEyYTc5ODhlMTQyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")

@comic_7.specials.create(name: 'New in Town', runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_.jpg")
@comic_7.specials.create(name: 'The Comeback Kid', runtime: 62, thumbnail: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg")
@comic_7.specials.create(name: 'Kid Gorgeous at Radio City', runtime: 65, thumbnail: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")

@comic_8.specials.create(name: 'Hannibal takes Edinburgh', runtime: 80, thumbnail: "https://m.media-amazon.com/images/M/MV5BOWQwYWI0MGUtNTkzNS00ZmI5LTk2OGYtNDYwYjU4NWMzZjRjXkEyXkFqcGdeQXVyNTQ5OTg2NA@@._V1_SY1000_CR0,0,713,1000_AL_.jpg")
@comic_8.specials.create(name: 'Comedy Camisado', runtime: 83, thumbnail: "https://m.media-amazon.com/images/M/MV5BNDQ0ZDA3NTQtNzI3NC00Y2NiLWI0ZTctN2RjNDYxNWEyODY4XkEyXkFqcGdeQXVyNTQwMDk4NDM@._V1_SY1000_CR0,0,674,1000_AL_.jpg")

@comic_9.specials.create(name: 'Crazy Normal', runtime: 99, thumbnail: "https://m.media-amazon.com/images/M/MV5BODFlNjZkZWEtNTdkMy00NjNjLTk5YmItMWYzY2NmYzgwYzM4L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTgwOTE5NDk@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
@comic_9.specials.create(name: "That's Racist", runtime: 97, thumbnail: "https://m.media-amazon.com/images/M/MV5BMmU2NjQyMmItMzBhMy00YTkxLTgxMjgtOGUyM2Y0OWUzMDBmL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTE3ODg3MDY@._V1_.jpg")
@comic_9.specials.create(name: "It's my Culture", runtime: 98, thumbnail: "https://m.media-amazon.com/images/M/MV5BZDM1ODVkNGMtYzA2OC00ZWJkLTkxYTEtZWFhNDBlZDQxOGUwXkEyXkFqcGdeQXVyMjQ4NDAyMDI@._V1_.jpg")
@comic_9.specials.create(name: "African American", runtime: 69, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjMzNDU4NDk4OF5BMl5BanBnXkFtZTgwMzkxODA2MDE@._V1_.jpg")
@comic_9.specials.create(name: "The Nationwild Comedy Tour", runtime: 94, thumbnail: "https://m.media-amazon.com/images/M/MV5BZjNiZjk1ZmItMTRiOC00ZTE5LWE0ZmMtYzIxOGI0OTNhZmI4L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTgwOTE5NDk@._V1_.jpg")
@comic_9.specials.create(name: "Pay Back the Funny", runtime: 84, thumbnail: "https://m.media-amazon.com/images/M/MV5BYmU1NWU3YmYtNjg1MS00YTU1LWE5OGYtZTY2NWNlNjA0YWYyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_CR0,0,694,1000_AL_.jpg")
@comic_9.specials.create(name: "Lost in Translation", runtime: 62, thumbnail: "https://m.media-amazon.com/images/M/MV5BMmNjYmY3N2QtOTUwNC00ZjI4LWI0MzUtZGRiOTg0M2U1MTYyXkEyXkFqcGdeQXVyMjQ4NDAyMDI@._V1_.jpg")
@comic_9.specials.create(name: "Afradi of the Dark", runtime: 67, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTZhNjNjNGUtYTc2Ni00ZDc4LWJjNDMtYjVlOTI5OGI5YzE5XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
