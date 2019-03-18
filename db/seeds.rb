require './app/models/comedian.rb'
require './app/models/special.rb'

Comedian.destroy_all
Special.destroy_all

amy = Comedian.create(name: 'Amy Schumer', age: 37, city: 'Upper East Side')
amy.specials.create(name:'Amy Schumer: The Leather Special', runtime: 57, image: 'https://m.media-amazon.com/images/M/MV5BMGMxYWY1MTktZDFlNC00YjdjLTk5MGMtODEwNTZiY2MxZjk1XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_.jpg')
amy.specials.create(name:'Amy Schumer: Live at the Apollo', runtime: 61, image: 'https://m.media-amazon.com/images/M/MV5BMTkzMzU1MTc3M15BMl5BanBnXkFtZTgwNjYyMjQ5NjE@._V1_.jpg')

ali = Comedian.create(name: 'Ali Wong', age: 36, city: 'San Franciso')
ali.specials.create(name:'Ali Wong: Hard Knock Wife', runtime: 64, image: 'https://m.media-amazon.com/images/M/MV5BMWVkZDNjZTMtMTY0Yi00OGQ0LTliMDEtMWMxYzljYzZlYTY3XkEyXkFqcGdeQXVyMTEzNjA2NzM@._V1_.jpg')
ali.specials.create(name:'Ali Wong: Baby Cobra', runtime: 60, image: 'https://m.media-amazon.com/images/M/MV5BOWZmODIxMDEtZGY1My00OGEyLWE3NTQtN2Y4MTFkMzdlMTc4XkEyXkFqcGdeQXVyNjcwNDI1MDk@._V1_.jpg')

ellen = Comedian.create(name: 'Ellen DeGeneres', age: 61, city: 'Metairie')
ellen.specials.create(name:'Relatable', runtime: 68, image: 'https://m.media-amazon.com/images/M/MV5BYTlmYzI2NTMtYmZmOS00ZTYzLTg2ZTUtZDhkZjhkZDVjMWQwXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SY1000_CR0,0,675,1000_AL_.jpg')

hannah = Comedian.create(name: 'Hannah Gadbsy', age: 41, city: 'Smithton')
hannah.specials.create(name:'Hannah Gadsby: Nanette', runtime: 69, image: 'https://m.media-amazon.com/images/M/MV5BY2I3MThmYTctZTU4YS00YWNmLTg4YzktNDY0ZGE5MmQ3Y2Q3XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg')

tig = Comedian.create(name: 'Tig Notaro', age: 47, city: 'Jackson')
tig.specials.create(name:'Tig Notaro: Boyish Girl Interrupted', runtime: 55, image: 'https://m.media-amazon.com/images/M/MV5BMjc4Mzc3MDQwOF5BMl5BanBnXkFtZTgwMTI4NzcwNzE@._V1_SY1000_SX674_AL_.jpg')
tig.specials.create(name:'Tig Notaro: Happy To Be Here', runtime: 58, image: 'https://m.media-amazon.com/images/M/MV5BNWQxMDgzYjAtZTZkOS00MWM2LWIxNTUtZTUwYmUxMWQ0NzM1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg')

russell = Comedian.create(name: 'Russell Peters', age: 48, city: 'Toronto')
russell.specials.create(name: 'Russell Peters: Outsourced', runtime: 72, image: 'https://m.media-amazon.com/images/M/MV5BMTk1MDc1NjY5NV5BMl5BanBnXkFtZTgwMTcyMTA2MDE@._V1_.jpg')
russell.specials.create(name: 'Russell Peters: Red, White and Brown', runtime: 78, image: 'https://m.media-amazon.com/images/M/MV5BNDM1YjkxMjctNTE1Yi00OTg0LWFhNWItNWJiM2I1OTg4NTI1XkEyXkFqcGdeQXVyMjY1Mjg5Njg@._V1_SY1000_CR0,0,717,1000_AL_.jpg')
russell.specials.create(name: 'Russell Peters: The Green Card Tour: Live from the O2 Arena', runtime: 58, image: 'https://m.media-amazon.com/images/M/MV5BMTgyNTI2MTE5OF5BMl5BanBnXkFtZTgwNDE5NTA2MDE@._V1_.jpg')
russell.specials.create(name: 'Russell Peters: Notorious', runtime: 71, image: 'https://m.media-amazon.com/images/M/MV5BOGI4MDYzYTEtYTMwMi00YjM0LTk5Y2EtOTIyMDM3ZmZmYmY2XkEyXkFqcGdeQXVyMjkxMTM1Njc@._V1_.jpg')

jerry = Comedian.create(name: 'Jerry Seinfeld', age: 64, city: 'Brooklyn')
jerry.specials.create(name: 'Jerry Seinfeld: Confidential', runtime: 55, image: 'https://m.media-amazon.com/images/M/MV5BYjZlNTgxMzYtZjc1ZS00OTQzLThiYWYtMTEzYjNmNDM1NmFkXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_.jpg')
jerry.specials.create(name: "I'm Telling You for the Last Time", runtime: 75, image: 'https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg')
jerry.specials.create(name: 'Jerry Before Seinfeld', runtime: 62, image: 'https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg')

john = Comedian.create(name: 'John Mulvaney', age: 36, city: 'Chicago')
john.specials.create(name: 'John Mulvaney: The Comeback Kid', runtime: 62, image: 'https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg')
john.specials.create(name: 'John Mulvaney: New in Town', runtime: 60, image: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_.jpg')

trevor = Comedian.create(name: 'Trevor Noah', age: 35, city: 'Johannesburg')
trevor.specials.create(name: 'Trevor Noah: Son of Patricia', runtime: 63, image: 'https://m.media-amazon.com/images/M/MV5BMTU4MTA5NjMyNl5BMl5BanBnXkFtZTgwNDY0OTI4NjM@._V1_SY1000_CR0,0,675,1000_AL_.jpg')
trevor.specials.create(name: 'Trevor Noah: Afraid of the Dark', runtime: 67, image: 'https://m.media-amazon.com/images/M/MV5BMTZhNjNjNGUtYTc2Ni00ZDc4LWJjNDMtYjVlOTI5OGI5YzE5XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg')

craig = Comedian.create(name: 'Craig Ferguson', age: 56, city: 'Springburn')
craig.specials.create(name: "Craig Ferguson: A Wee Bit O' Revolution", runtime: 80, image: 'https://m.media-amazon.com/images/M/MV5BMTU3MzMwNTQ5N15BMl5BanBnXkFtZTcwMTcwNDM0Mg@@._V1_.jpg')
craig.specials.create(name: 'Craig Ferguson: Does This Need to Be Said?', runtime: 66, image: 'https://m.media-amazon.com/images/M/MV5BMjEwMjQxNjIwNF5BMl5BanBnXkFtZTgwNjQ1NTA2MDE@._V1_.jpg')

hassan = Comedian.create(name: 'Hassan Minhaj', age: 33, city: 'Davis')
hassan.specials.create(name: 'Hassan Minhaj: Homecoming King', runtime: 73, image: 'https://m.media-amazon.com/images/M/MV5BOWU2NTFjYTAtNDVkOC00YjJiLTg0NWMtODVmYzYwYjBiMmI3XkEyXkFqcGdeQXVyMjYwMTkwNDc@._V1_.jpg')

anjelah = Comedian.create(name: 'Anjelah Johnson', age: 36, city: 'San Jose')
anjelah.specials.create(name: 'Anjelah Johnson-Reyes: Not Fancy', runtime: 90, image: 'https://m.media-amazon.com/images/M/MV5BODVkNDE4ZTQtNTcyMS00OTI4LWI4NjMtYmI2ZjVlNGMxZTNjXkEyXkFqcGdeQXVyMTQxMzY0ODY@._V1_.jpg')


puts Comedian.count
puts Special.count
