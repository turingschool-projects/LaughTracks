require './app/models/comedian.rb'
require './app/models/special.rb'

Comedian.destroy_all
Special.destroy_all

c1 = Comedian.create(name: 'Tom Segura', age: 39, hometown: 'Cincinnati', headshot_link: 'http://flapperscomedy.com/med/tomseguaheadshot.jpg')
c1.specials.create(name: 'Tom Segura: Disgraceful', runtime: 71, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMGUyNTBiZjktMjk5Ni00Yzk3LTlkZTUtY2FiOTJiOGRhZWY3XkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')
c1.specials.create(name: 'Tom Segura: Mostly Stories', runtime: 73, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BZWE2Nzc5N2YtOWM0OS00ZWVmLThhOTctNjNlNGI0NTQzMTU5XkEyXkFqcGdeQXVyMzAzODY0NzE@._V1_.jpg')

c2 = Comedian.create(name: 'Mitch Hedberg', age: 37, hometown: 'St. Paul', headshot_link: 'https://upload.wikimedia.org/wikipedia/en/d/d5/Mitch_Hedberg.jpg')
c2.specials.create(name: 'Comedy Central: Mitch Hedberg', runtime: 23, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMTQ0NDAyNDg5OV5BMl5BanBnXkFtZTgwMDUxNjEyMjE@._V1_.jpg')
c2.specials.create(name: 'Just for Laughs', runtime: 30, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMTc4NzI1NzY4N15BMl5BanBnXkFtZTcwMjUwNDY3Mg@@._V1_.jpg')

c3 = Comedian.create(name: 'Dave Chappelle', age: 45, hometown: 'Washington DC', headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/2/23/Dave_Chappelle_%2842791297960%29_%28cropped%29.jpg')
c3.specials.create(name: 'Dave Chappelle: Equanimity', runtime: 60, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg')
c3.specials.create(name: 'Dave Chappelle: The Bird Revelation', runtime: 49, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BNGYzOTE0YzEtMjc5NC00MTg2LTk2MDAtMzJlMjM1NTU1MjcwXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')

c4 = Comedian.create(name: 'Chris D\'Elia', age: 38, hometown: 'Montclair', headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Chris_D%27Elia.jpg')
c4.specials.create(name: 'Chris D\'Elia: Man on Fire', runtime: 65, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMDE3Y2RkZjMtNGYwNC00NjI5LWJkNzUtNjZlYmYyMmFhMTJlXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')
c4.specials.create(name: 'Gotham Comedy Live', runtime: 60, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMzE5OWUzZGUtOTE1Yi00OGI0LWI2M2ItYTI0MDQ5ZjhmNDAzXkEyXkFqcGdeQXVyNDgwNjI4Nw@@._V1_SY1000_CR0,0,1734,1000_AL_.jpg')

c5 = Comedian.create(name: 'Hannibal Buress', age: 36, hometown: 'Chicago', headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/2/27/7.29.12HannibalBuressByEzmosis.jpg')
c5.specials.create(name: 'Inside Jokes', runtime: 50, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BNmQ2MTI1M2YtNGFlNS00NDdlLTlmMGEtOGQ2ZWVhNTViMDhhXkEyXkFqcGdeQXVyMjc0OTQ4MzU@._V1_SY1000_CR0,0,678,1000_AL_.jpg')
c5.specials.create(name: 'Hannibal Buress: Comedy Camisado', runtime: 83, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BNDQ0ZDA3NTQtNzI3NC00Y2NiLWI0ZTctN2RjNDYxNWEyODY4XkEyXkFqcGdeQXVyNTQwMDk4NDM@._V1_SY1000_CR0,0,674,1000_AL_.jpg')

c6 = Comedian.create(name: 'Ali Wong', age: 36, hometown: 'San Francisco', headshot_link: 'https://res.cloudinary.com/allamerican/image/fetch/t_face_s270/https://speakerdata2.s3.amazonaws.com/photo/image/874157/152215a.jpg')
c6.specials.create(name: 'Ali Wong: Hard Knock Wife', runtime: 64, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMWVkZDNjZTMtMTY0Yi00OGQ0LTliMDEtMWMxYzljYzZlYTY3XkEyXkFqcGdeQXVyMTEzNjA2NzM@._V1_.jpg')

c7 = Comedian.create(name: 'Chelsea Peretti', age: 41, hometown: 'Contra Costa County', headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Chelsea_Peretti_at_Meltdown.jpg')
c7.specials.create(name: 'Chelsea Peretti: One of the Greats', runtime: 74, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMjE2NTc3MzEzOV5BMl5BanBnXkFtZTgwNzY1NzA0NDE@._V1_.jpg')
c7.specials.create(name: 'Tubbin with Tash: Chelsea Peretti & Reggie Watts', runtime: 30, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BYTNlM2FkN2YtYzk2MC00YjdjLTg0ZWQtMjY0NWI1NjQxNjU5XkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg')

c8 = Comedian.create(name: 'Bobby Lee', age: 47, hometown: 'San Diego', headshot_link: 'https://pbs.twimg.com/profile_images/989701284327444482/SRtL5DTO_400x400.jpg')
c8.specials.create(name: 'Kims of Comedy', runtime: 90, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BZjk4MTA2YWUtMjU1NC00NDA4LTkzM2MtZWQ0YTFlMWY1YTgwXkEyXkFqcGdeQXVyNjIwODUwNTc@._V1_.jpg')
c8.specials.create(name: 'Pauly Shore\'s Vegas Is My Oyster', runtime: 84, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BNTc2M2Q3ODEtODEwNC00ZjBlLTk2ODktYzZlOTYxZDdiZGUyXkEyXkFqcGdeQXVyMjc4NzI0NzU@._V1_.jpg')

c9 = Comedian.create(name: 'Joey Diaz', age: 56, hometown: 'Havana', headshot_link: 'http://voodoocomedy.com/wp-content/uploads/2015/03/joey-diaz.jpg')
c9.specials.create(name: 'Joey Diaz: Sociably Unacceptable', runtime: 57, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BZTAxNTViYmUtYWU0OC00YTNhLTg3YTYtMTkwMjgzOTFkZGFmL2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
c9.specials.create(name: 'XXXtreme Comedy Tour', runtime: 45, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMjBhODUwM2YtZmRiNS00YTk5LWFhN2ItNzE4YTE3Y2Y5Y2JhXkEyXkFqcGdeQXVyMTk5NTQ2MzI@._V1_.jpg')

c10 = Comedian.create(name: 'Bert Kreischer', age: 46, hometown: 'Tampa', headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/c/ce/Bert_Kreischer_in_2012.jpg')
c10.specials.create(name: 'Bert Kreischer: The Machine', runtime: 70, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BN2U5ZTk3OWUtNzBmOC00MjkzLWFmZWQtNTQyNWEyYTFmOWRlXkEyXkFqcGdeQXVyMjI2OTg4ODA@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
c10.specials.create(name: 'Bert Kreischer: Comfortably Dumb', runtime: 75, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMTgwNjI5NTczNl5BMl5BanBnXkFtZTgwOTYzMzA2MDE@._V1_.jpg')

c11 = Comedian.create(name: 'Brian Posehn', age: 52, hometown: 'Sacramento', headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/f/fa/Brian_Posehn_1.JPG')
c11.specials.create(name: 'Brian Posehn: 25x2', runtime: 63, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMjgzZGEwODctZjAwNy00NTFiLWJmN2ItNDFhZDdkZjFjMWJlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_SX1000_AL_.jpg')
c11.specials.create(name: 'Brian Posehn: Criminally Posehn', runtime: 60, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMTg4YzJlYmEtNmQ0NS00ZTk0LTg0MTgtMTFmMTEyMDE0NDAzXkEyXkFqcGdeQXVyNTU1NTQzMzk@._V1_.jpg')

c12 = Comedian.create(name: 'Gary Gulman', age: 48, hometown: 'Peabody', headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/5/51/Comics_Come_Home_2013_%28cropped%29.jpg')
c12.specials.create(name: 'Gary Gulman: It\'s About Time', runtime: 54, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BNjM0MDI4OWQtNWZlNS00ZDE2LWI2ZTAtMzNkZWM4YTUxNzIzXkEyXkFqcGdeQXVyMjIzMjYxNjM@._V1_.jpg')
c12.specials.create(name: 'Gary Gulman: In This Economy?', runtime: 60, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BNjM0MTUyODM4NV5BMl5BanBnXkFtZTgwNDUzNjU4NDE@._V1_.jpg')

c13 = Comedian.create(name: 'Bill Burr', age: 50, hometown: 'Canton', headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/a/ad/Bill_Burr_by_Gage_Skidmore.jpg')
c13.specials.create(name: 'Bill Burr: Walk Your Way Out', runtime: 77, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_.jpg')
c13.specials.create(name: 'Bill Burr: Let It Go', runtime: 65, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMjA0ODUxODkwOV5BMl5BanBnXkFtZTgwNTMwNTA2MDE@._V1_.jpg')

c14 = Comedian.create(name: 'John Mulaney', age: 36, hometown: 'Chicago', headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/9/9c/John_Mulaney_at_PaleyFest_2014.jpg')
c14.specials.create(name: 'John Mulaney: The Comeback Kid', runtime: 62, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg')
c14.specials.create(name: 'John Mulaney: New in Town', runtime: 60, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_.jpg')

c15 = Comedian.create(name: 'Jim Jefferies', age: 42, hometown: 'Sydney', headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/e/e3/Jim_Jeffries.jpg')
c15.specials.create(name: 'Jim Jefferies: This Is Me Now', runtime: 70, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMzAxZDNlMmEtYjk2Ny00YzRjLTkwOTQtMDNkYmExMDZhNGNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg')
c15.specials.create(name: 'Jim Jefferies: Freedumb', runtime: 86, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BYmZkZDFlMzAtNjQ5MS00NDE4LWEwMjktYTRmOTc3Mjc2NjI0XkEyXkFqcGdeQXVyMjQ4MzkyMjE@._V1_SY1000_CR0,0,666,1000_AL_.jpg')

c16 = Comedian.create(name: 'Iliza Shlesinger', age: 36, hometown: 'New York', headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/8/81/Iliza_Shlesinger.jpg')
c16.specials.create(name: 'Iliza: Elder Millennial', runtime: 72, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BNTE2ZmFmYTctOGQyNy00OGNkLTgxYWMtYTVlYzMyMzAyZGRiXkEyXkFqcGdeQXVyNzE3MDkxODc@._V1_.jpg')
c16.specials.create(name: 'Iliza Shlesinger: Confirmed Kills', runtime: 77, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BZGEyYjkwMWItM2EyZS00N2Q1LWIzZmQtZDg5Y2ZmMzdlNTgyXkEyXkFqcGdeQXVyNjgzNzA2NjU@._V1_.jpg')
