require_relative '../app/models/comedian.rb'
require_relative '../app/models/special.rb'

Comedian.destroy_all
Special.destroy_all

Comedian.create(name: "Richard Prior", age: 65, city: "Los Angeles, CA")
Comedian.create(name: "George Carlin", age: 71, city: "Santa Monica, CA")
Comedian.create(name: "Joan Rivers", age: 81, city: "New York City, NY")
Comedian.create(name: "Robin Williams", age: 63, city: "Tiburon, CA")
Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA")
Comedian.create(name: "Chris Rock", age: 53, city: "Andrews, SC")
Comedian.create(name: "Wanda Sykes", age: 54, city: "Portsmouth, VA")
Comedian.create(name: "Eddie Murphy", age: 57, city: "New York City, NY")
Comedian.create(name: "Jerry Seinfeld", age: 64, city: "New York City, NY")
Comedian.create(name: "Dave Chapelle", age: 45, city: "Washington, DC")
Comedian.create(name: "Sarah Silverman", age: 48, city: "Bedford, NH")
Comedian.create(name: "Michelle Wolf", age: 33, city: "Hershey, PA")

Special.create(name: "Richard Pryor: Live and Smokin' (1971)", run_time: 48, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTkyMDI1OTc2N15BMl5BanBnXkFtZTcwNzgzODEyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 1)
Special.create(name: "Richard Pryor: Live in Concert (1979)'", run_time: 78, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTg4NDkwMzYwNF5BMl5BanBnXkFtZTYwNTMzMTQ5._V1_UY268_CR2,0,182,268_AL_.jpg", comedian_id: 1)
Special.create(name: "Richard Pryor: Live on the Sunset Strip (1982)", run_time: 88, thumbnail: "https://m.media-amazon.com/images/M/MV5BNTI1MWQ1M2YtMTRjNS00NTlhLThkNzctODk2ZmQ2NmMzN2ViXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 1)

Special.create(name: "George Carlin: Doin' It Again (1990)", run_time: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjg4MTYwNjY0NF5BMl5BanBnXkFtZTcwNzg1OTkyMQ@@._V1_UY268_CR5,0,182,268_AL_.jpg", comedian_id: 2)
Special.create(name: "George Carlin: Jammin' in New York (1992)", run_time: 59, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTI2MjA5NjEwOF5BMl5BanBnXkFtZTcwMDYzOTIzMQ@@._V1_UY268_CR3,0,182,268_AL_.jpg", comedian_id: 2)
Special.create(name: "George Carlin... It's Bad for Ya! (2008)", run_time: 70, thumbnail: "https://m.media-amazon.com/images/M/MV5BMzI0Njk5ZWYtNGVhNy00MjVmLWFhMWItN2NhNGQ5NDQ3YmE3XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 2)

Special.create(name: "Joan Rivers: Don't Start with Me (2012)", run_time: 68, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTU4Nzg3MTM5OF5BMl5BanBnXkFtZTcwODI3NjM4OA@@._V1_UY268_CR7,0,182,268_AL_.jpg", comedian_id: 3)
Special.create(name: "Joan Rivers: Abroad in London (1992)", run_time: 57, thumbnail: "https://m.media-amazon.com/images/M/MV5BNjQ0OTlmZWItOGQ2Yy00MzdkLWExMjUtNDJkNzgyZjk4ZTYwXkEyXkFqcGdeQXVyMjQ0NzE0MQ@@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 3)

Special.create(name: "Robin Williams: Weapons of Self Destruction (2009)", run_time: 90, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 4)
Special.create(name: "Robin Williams Live on Broadway (2002)", run_time: 99, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTc1MTQ4NjcyOF5BMl5BanBnXkFtZTcwODIyNzIyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 4)

Special.create(name: "Bill Burr: You People Are All the Same. (2012)", run_time: 69, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 5)
Special.create(name: "Bill Burr: I'm Sorry You Feel That Way (2014)", run_time: 80, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 5)
Special.create(name: "Bill Burr: Walk Your Way Out (2017)", run_time: 77, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_UY268_CR10,0,182,268_AL_.jpg", comedian_id: 5)

Special.create(name: "Chris Rock: Never Scared (2004)", run_time: 80, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTlhYzMzNzItNWMyYy00ZGRlLWI1N2UtOGI2YjIwOGEwYTViXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 6)
Special.create(name: "Chris Rock: Kill the Messenger - London, New York, Johannesburg (2008)", run_time: 79, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjAwMjQxNDA5OF5BMl5BanBnXkFtZTcwNTE3MzM5MQ@@._V1_UY268_CR11,0,182,268_AL_.jpg", comedian_id: 6)
Special.create(name: "Chris Rock: Tamborine (2018)", run_time: 64, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGQ5NWJmMDktMDMxNS00ZWQzLWEzNjgtZWU5NjE0ZmZjYjc0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 6)

Special.create(name: "Wanda Sykes: Tongue Untied (2003)", run_time: 42, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTczMjU3MDA0OF5BMl5BanBnXkFtZTcwNTg4MjIyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 7)
Special.create(name: "Wanda Sykes: Sick and Tired (2006)", run_time: 70, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTg4NjcxMDY1N15BMl5BanBnXkFtZTcwNDYxOTUzMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 7)
Special.create(name: "Wanda Sykes: I'ma Be Me (2009)", run_time: 87, thumbnail: "https://m.media-amazon.com/images/M/MV5BOTAxODQ3NzQxOV5BMl5BanBnXkFtZTcwNDIwOTY4Mg@@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 7)

Special.create(name: "Eddie Murphy: Delirious (1983)", run_time: 69, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTQ5MDcyODU0Nl5BMl5BanBnXkFtZTcwMTgxNjA0MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 8)
Special.create(name: "Eddie Murphy: Raw (1987)", run_time: 99, thumbnail: "https://m.media-amazon.com/images/M/MV5BOWEwYTk4YTgtZGVjNi00MmI0LTkwOTItOWUxYzBlN2YwZWFkXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 8)

Special.create(name: "Jerry Seinfeld: Stand-Up Confidential (1987)", run_time: 55, thumbnail: "https://m.media-amazon.com/images/M/MV5BYjZlNTgxMzYtZjc1ZS00OTQzLThiYWYtMTEzYjNmNDM1NmFkXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 9)
Special.create(name: "Jerry Seinfeld: 'I'm Telling You for the Last Time' (1998)", run_time: 75, thumbnail: "https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_UY268_CR0,0,182,268_AL_.jpg", comedian_id: 9)
Special.create(name: "Jerry Before Seinfeld (2017)", run_time: 62, thumbnail: "https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_UY268_CR1,0,182,268_AL_.jpg", comedian_id: 9)

Special.create(name: "Dave Chappelle: Equanimity (2017)", run_time: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg", commedian_id: 10)
Special.create(name: "Dave Chappelle: For What It's Worth (2004)", run_time: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BZGQ2MjBjNDEtYWVlNi00Nzc3LTg2NjUtYWY3ZTkwNTAwNDQyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg", commedian_id: 10)
Special.create(name: "Dave Chappelle: Killin' Them Softly (2000)", run_time: 57, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_UX182_CR0,0,182,268_AL_.jpg", commedian_id: 10)

Special.create(name: "Sarah Silverman: A Speck of Dust (2017)", run_time: 71, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjYwYjhjM2EtYjgwYS00YjkyLTllMjQtZGM1ZmFkMTQ1YmFmXkEyXkFqcGdeQXVyMzUwMjc0NTU@._V1_UY268_CR4,0,182,268_AL_.jpg", commedian_id: 11)
Special.create(name: "Sarah Silverman: We Are Miracles (2013)", run_time: 53, thumbnail: "https://m.media-amazon.com/images/M/MV5BODU5MWI2YWEtNTQ3Ny00OWQ3LThkNTUtYzdiNDVjNDczM2NiXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg", commedian_id: 11)

Special.create(name: "Michelle Wolf: Nice Lady (2017)", run_time: 58, thumbnail: "https://m.media-amazon.com/images/M/MV5BZjgxMDY5YzctODA2NC00MzY2LTgxYzAtMDc4NmY3YTA0M2QyXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg", commedian_id: 12)
