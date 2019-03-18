require './app/models/comedian.rb'
require './app/models/special.rb'

Comedian.destroy_all
Special.destroy_all

c1 = Comedian.create(name: 'Demetri Martin', age: 45, hometown: 'New York City', image: 'https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_UY317_CR20,0,214,317_AL_.jpg')
c2 = Comedian.create(name: 'Steve Martin', age: 73, hometown: 'Waco', image: 'https://m.media-amazon.com/images/M/MV5BNDY0ODYwNDM3OV5BMl5BanBnXkFtZTcwMTc3NjQzMg@@._V1_UX214_CR0,0,214,317_AL_.jpg')
c3 = Comedian.create(name: 'Trevor Noah', age: 35, hometown: 'Johannesburg', image: 'https://m.media-amazon.com/images/M/MV5BMjQ0MjEzNjczMF5BMl5BanBnXkFtZTgwNDEzNTY4NzE@._V1_UY317_CR12,0,214,317_AL_.jpg')
c4 = Comedian.create(name: 'Ellen Degeneres', age: 60, hometown: 'Metairie', image: 'https://m.media-amazon.com/images/M/MV5BNDAwMzAyNDEzMV5BMl5BanBnXkFtZTcwMDU3MTAxMw@@._V1_UY317_CR12,0,214,317_AL_.jpg')
c5 = Comedian.create(name: 'John Mulaney', age: 36, hometown: 'Chicago', image: 'https://i.pinimg.com/736x/07/31/7d/07317d772dd1e93e1b99c2567da65735.jpg')
c6 = Comedian.create(name: 'George Carlin', age: 71, hometown: 'New York City', image: 'https://m.media-amazon.com/images/M/MV5BMTI4ODgzNTk0NV5BMl5BanBnXkFtZTcwNjU1MjY3MQ@@._V1_UY317_CR11,0,214,317_AL_.jpg')
c7 = Comedian.create(name: 'Martin Short', age: 69, hometown: 'Hamilton', image: 'https://m.media-amazon.com/images/M/MV5BMTY1MDIyMDY1N15BMl5BanBnXkFtZTgwNzMzMDE5NTE@._V1_UX214_CR0,0,214,317_AL_.jpg')
c8 = Comedian.create(name: 'Chris Rock', age: 54, hometown: 'Andrews', image: 'https://m.media-amazon.com/images/M/MV5BMTEyNjM5MjgyNzdeQTJeQWpwZ15BbWU3MDAzMzUyODc@._V1.._UX214_CR0,0,214,317_AL_.jpg')
c9 = Comedian.create(name: 'Bill Burr', age: 51, hometown: 'Canton', image: 'https://m.media-amazon.com/images/M/MV5BMTQwNDgwODg3NV5BMl5BanBnXkFtZTcwMTY5OTM3MQ@@._V1_UY317_CR10,0,214,317_AL_.jpg')
c10 = Comedian.create(name: 'Chris Hardwick', age: 48, hometown: 'Louisville', image: 'https://m.media-amazon.com/images/M/MV5BMGRiN2Q4ZWQtMjdiZS00ZWY1LWEyNWMtMzliYjRkZWE3ODEzXkEyXkFqcGdeQXVyMTkxNjA2OTI@._V1_UX214_CR0,0,214,317_AL_.jpg')
c11 = Comedian.create(name: 'Jerry Seinfeld', age: 65, hometown: 'Brooklyn', image: 'https://m.media-amazon.com/images/M/MV5BMTYxMDkwMjM5NV5BMl5BanBnXkFtZTcwMzUxMTgxNw@@._V1_UX214_CR0,0,214,317_AL_.jpg')
c12 = Comedian.create(name: 'Margaret Cho', age: 65, hometown: 'San Francisco', image: 'https://m.media-amazon.com/images/M/MV5BZTAxYmU1ODItYWViNC00YWJiLWJiYTEtNzExYTk3MmE4NDZkXkEyXkFqcGdeQXVyNTk0ODYyMTk@._V1_UX214_CR0,0,214,317_AL_.jpg')

c1.specials.create(name: 'Demetri Martin. Person.', runtime: 42, image: 'https://m.media-amazon.com/images/M/MV5BMjE0MDgwNDE0MF5BMl5BanBnXkFtZTcwMDAzMDQ1MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg')
c1.specials.create(name: 'Demetri Martin: Live (At the Time)', runtime: 61, image: 'https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_UX182_CR0,0,182,268_AL_.jpg')
c1.specials.create(name: 'Demetri Martin: The Overthinker', runtime: 56, image: 'https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_UY268_CR4,0,182,268_AL_.jpg')

c2.specials.create(name: 'Steve Martin and Martin Short: An Evening You Will Forget for the Rest of Your Life', runtime: 74, image: 'https://m.media-amazon.com/images/M/MV5BMTI5ZjQzNzktYTk2OS00ZWFiLWFlMjctNGZjMTU3NjAyMjEyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg')
c2.specials.create(name: "Steve Martin's Best Show Ever", runtime: 60, image: 'https://m.media-amazon.com/images/M/MV5BOTIwMGZmOGYtYzM1My00YTE1LWI2NTgtY2YwOTYxNGM2YTZkXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg')
c2.specials.create(name: 'All Commercials... A Steve Martin Special', runtime: 60, image: 'https://m.media-amazon.com/images/M/MV5BOTIwMGZmOGYtYzM1My00YTE1LWI2NTgtY2YwOTYxNGM2YTZkXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg')

c3.specials.create(name: 'Trevor Noah: Son of Patricia', runtime: 63, image: 'https://m.media-amazon.com/images/M/MV5BMTU4MTA5NjMyNl5BMl5BanBnXkFtZTgwNDY0OTI4NjM@._V1_UX182_CR0,0,182,268_AL_.jpg')
c3.specials.create(name: 'Trevor Noah: Afraid of the Dark', runtime: 67, image: 'https://m.media-amazon.com/images/M/MV5BMTZhNjNjNGUtYTc2Ni00ZDc4LWJjNDMtYjVlOTI5OGI5YzE5XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg')
c3.specials.create(name: 'Trevor Noah: Pay Back the Funny', runtime: 84, image: 'https://m.media-amazon.com/images/M/MV5BYmU1NWU3YmYtNjg1MS00YTU1LWE5OGYtZTY2NWNlNjA0YWYyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR2,0,182,268_AL_.jpg')
c3.specials.create(name: 'Trevor Noah: Lost in Translation', runtime: 62, image: 'https://m.media-amazon.com/images/M/MV5BMmNjYmY3N2QtOTUwNC00ZjI4LWI0MzUtZGRiOTg0M2U1MTYyXkEyXkFqcGdeQXVyMjQ4NDAyMDI@._V1_UY268_CR3,0,182,268_AL_.jpg')

c4.specials.create(name: 'Ellen DeGeneres: The Beginning', runtime: 66, image: 'https://m.media-amazon.com/images/M/MV5BODQxNzQzMDc4Nl5BMl5BanBnXkFtZTgwMTgwNjgwMzE@._V1_UY268_CR9,0,182,268_AL_.jpg')
c4.specials.create(name: 'Ellen DeGeneres: Relatable', runtime: 68, image: 'https://m.media-amazon.com/images/M/MV5BYTlmYzI2NTMtYmZmOS00ZTYzLTg2ZTUtZDhkZjhkZDVjMWQwXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_UX182_CR0,0,182,268_AL_.jpg')

c5.specials.create(name: 'John Mulaney: Kid Gorgeous at Radio City', runtime: 65, image: 'https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg')
c5.specials.create(name: 'John Mulaney: The Comeback Kid', runtime: 62, image: 'https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg')
c5.specials.create(name: 'John Mulaney: New in Town', runtime: 60, image: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg')

c6.specials.create(name: "George Carlin... It's Bad for Ya!", runtime: 70, image: 'https://m.media-amazon.com/images/M/MV5BMzI0Njk5ZWYtNGVhNy00MjVmLWFhMWItN2NhNGQ5NDQ3YmE3XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg')
c6.specials.create(name: 'George Carlin: Life Is Worth Losing', runtime: 75, image: 'https://m.media-amazon.com/images/M/MV5BMTI2ODk4OTg1NF5BMl5BanBnXkFtZTcwNjM5MzU0MQ@@._V1_UY268_CR2,0,182,268_AL_.jpg')
c6.specials.create(name: 'George Carlin: Complaints & Grievances', runtime: 55, image: 'https://m.media-amazon.com/images/M/MV5BMTIyNTg1MjU0Nl5BMl5BanBnXkFtZTcwNzY2ODYyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg')
c6.specials.create(name: 'George Carlin: You Are All Diseased', runtime: 65, image: 'https://m.media-amazon.com/images/M/MV5BMTIxMjA3OTYwNF5BMl5BanBnXkFtZTcwMTU5OTcxMQ@@._V1_UY268_CR6,0,182,268_AL_.jpg')

c7.specials.create(name: 'Steve Martin and Martin Short: An Evening You Will Forget for the Rest of Your Life', runtime: 74, image: 'https://m.media-amazon.com/images/M/MV5BMTI5ZjQzNzktYTk2OS00ZWFiLWFlMjctNGZjMTU3NjAyMjEyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg')
c7.specials.create(name: 'The Show Formerly Known as the Martin Short Show', runtime: 90, image: 'https://m.media-amazon.com/images/M/MV5BMTI5ZjQzNzktYTk2OS00ZWFiLWFlMjctNGZjMTU3NjAyMjEyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg')
c7.specials.create(name: 'Martin Short: Concert for the North Americas', runtime: 60, image: 'https://m.media-amazon.com/images/M/MV5BYmI2NGRhMjMtMzdkYi00YjFiLTk5NzMtN2JmYWQ5MGFiYWNjXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_UY268_CR4,0,182,268_AL_.jpg')

c8.specials.create(name: 'Chris Rock: Tamborine', runtime: 64, image: 'https://m.media-amazon.com/images/M/MV5BMGQ5NWJmMDktMDMxNS00ZWQzLWEzNjgtZWU5NjE0ZmZjYjc0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg')
c8.specials.create(name: 'Chris Rock: Kill the Messenger', runtime: 79, image: 'https://m.media-amazon.com/images/M/MV5BMjAwMjQxNDA5OF5BMl5BanBnXkFtZTcwNTE3MzM5MQ@@._V1_UY268_CR11,0,182,268_AL_.jpg')
c8.specials.create(name: 'Chris Rock: Bring the Pain', runtime: 80, image: 'https://m.media-amazon.com/images/M/MV5BMTU0ODk2MzYyM15BMl5BanBnXkFtZTcwMTUxMzYxMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg')
c8.specials.create(name: 'Chris Rock: Bigger & Blacker', runtime: 65, image: 'https://m.media-amazon.com/images/M/MV5BODQzOWExYjktZDQ2OC00YTA5LWI3YzctMDFjNjc3ZTM5NTA0XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg')

c9.specials.create(name: 'Bill Burr: Walk Your Way Out', runtime: 77, image: 'https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_UY268_CR10,0,182,268_AL_.jpg')
c9.specials.create(name: "Bill Burr: I'm Sorry You Feel That Way", runtime: 80, image: 'https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg')
c9.specials.create(name: 'Bill Burr: You People Are All the Same.', runtime: 69, image: 'https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg')
c9.specials.create(name: 'Bill Burr: Let It Go', runtime: 65, image: 'https://m.media-amazon.com/images/M/MV5BMjA0ODUxODkwOV5BMl5BanBnXkFtZTgwNTMwNTA2MDE@._V1_UY268_CR4,0,182,268_AL_.jpg')

c10.specials.create(name: 'Chris Hardwick: Funcomfortable', runtime: 74, image: 'https://m.media-amazon.com/images/M/MV5BMTc3MjU0NTI0N15BMl5BanBnXkFtZTgwNzY3MTg4ODE@._V1_UY268_CR9,0,182,268_AL_.jpg')
c10.specials.create(name: 'Chris Hardwick: Mandroid', runtime: 60, image: 'https://m.media-amazon.com/images/M/MV5BMjIxNDU5Mzc0M15BMl5BanBnXkFtZTgwOTc1NzA2MDE@._V1_UY268_CR1,0,182,268_AL_.jpg')

c11.specials.create(name: "Jerry Seinfeld: 'I'm Telling You for the Last Time'", runtime: 75, image: 'https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_UY268_CR0,0,182,268_AL_.jpg')
c11.specials.create(name: "Jerry Seinfeld: Stand-Up Confidential", runtime: 55, image: 'https://m.media-amazon.com/images/M/MV5BYjZlNTgxMzYtZjc1ZS00OTQzLThiYWYtMTEzYjNmNDM1NmFkXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_UX182_CR0,0,182,268_AL_.jpg')

c12.specials.create(name: 'Margaret Cho: PsyCHO', runtime: 81, image: 'https://m.media-amazon.com/images/M/MV5BNDEyNDU3NjcyNF5BMl5BanBnXkFtZTgwODcxMzg0ODE@._V1_UY268_CR9,0,182,268_AL_.jpg')
c12.specials.create(name: 'Margaret Cho: Beautiful', runtime: 86, image: 'https://m.media-amazon.com/images/M/MV5BMTM2ODk3MjU0Ml5BMl5BanBnXkFtZTcwNDM4ODAwMw@@._V1_UY268_CR4,0,182,268_AL_.jpg')
c12.specials.create(name: 'Margaret Cho: Assassin', runtime: 90, image: 'https://m.media-amazon.com/images/M/MV5BMTk4NjY5ODkxNl5BMl5BanBnXkFtZTcwNTM5MzEzMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg')
