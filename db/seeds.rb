require 'database_cleaner'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean
require_relative '../app/models/comedian'
require_relative '../app/models/special'

comedians = [
  {name: "Louis C.K.", age: 51, city: "Washington, D.C."},
  {name: "Chris Rock", age: 53, city: "Andrews, South Carolina"},
  {name: "Jerry Seinfeld", age: 64, city: "Brooklyn, New York"},
  {name: "Bill Cosby", age: 81, city: "Philadelphia, Pennsylvania"},
  {name: "Dave Chappelle", age: 45, city: "Washington, D.C."},
  {name: "Steve Martin", age: 73, city: "Waco, Texas"},
  {name: "Steven Wright", age: 62, city: "Cambridge, Massachusetts"},
  {name: "Billy Connolly", age: 75, city: "Davis, California"},
  {name: "Mike Birbiglia", age: 31, city: "Shrewsbury, Massachusetts"},
  {name: "Jerrod Carmichael", age: 31, city: "Los Angeles, California"},
  {name: "Tracy Morgan", age: 49, city: "New York City, New York"}
]

specials = [
  {name: "Louis C.K. 2017", runtime: 74, thumbnail: "https://m.media-amazon.com/images/M/MV5BOGYwMmVlMWUtZDE2My00MzMyLTk5MTQtZDdmM2U5YWQwZjM1XkEyXkFqcGdeQXVyMjExNDAyOTU@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 1},
  {name: "Louis C.K.: Shameless", runtime: 56, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjE4NjE1ODI5Ml5BMl5BanBnXkFtZTcwMTgxNjc0MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 1},
  {name: "Louis C.K.: Live at the Comedy Store", runtime: 66, thumbnail: "https://m.media-amazon.com/images/M/MV5BODJlMmIyNjEtZDQ0ZS00MGIyLWEyZmYtOTQyYTQyMWJkODhmXkEyXkFqcGdeQXVyMjQ0ODQ0MzQ@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 1},
  {name: "Chris Rock: Kill the Messenger - London, New York, Johannesburg", runtime: 79, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjAwMjQxNDA5OF5BMl5BanBnXkFtZTcwNTE3MzM5MQ@@._V1_UY268_CR11,0,182,268_AL_.jpg", comedian_id: 2},
  {name: "Chris Rock: Never Scared", runtime: 80, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTlhYzMzNzItNWMyYy00ZGRlLWI1N2UtOGI2YjIwOGEwYTViXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 2},
  {name: "Chris Rock: Bigger & Blacker", runtime: 65, thumbnail: "https://m.media-amazon.com/images/M/MV5BODQzOWExYjktZDQ2OC00YTA5LWI3YzctMDFjNjc3ZTM5NTA0XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 2},
  {name: "Jerry Seinfeld: 'I'm Telling You for the Last Time'", runtime: 75, thumbnail: "https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_UY268_CR0,0,182,268_AL_.jpg", comedian_id: 3},
  {name: "Jerry Seinfeld: Stand-Up Confidential", runtime: 55, thumbnail: "https://m.media-amazon.com/images/M/MV5BYjZlNTgxMzYtZjc1ZS00OTQzLThiYWYtMTEzYjNmNDM1NmFkXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 3},
  {name: "Jerry Before Seinfeld", runtime: 62, thumbnail: "https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_UY268_CR1,0,182,268_AL_.jpg", comedian_id: 3},
  {name: "Bill Cosby: Far from Finished", runtime: 95, thumbnail: "https://m.media-amazon.com/images/M/MV5BOTU0OTk0MTczNF5BMl5BanBnXkFtZTgwNDAyODA2MDE@._V1_UY268_CR1,0,182,268_AL_.jpg", comedian_id: 4},
  {name: "Bill Cosby: 49", runtime: 67, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTYzNzEwMDE4Ml5BMl5BanBnXkFtZTcwODk0MDAzMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 4},
  {name: "Bill Cosby: Himself", runtime: 105, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTUyMjg0NjgyOV5BMl5BanBnXkFtZTcwNzE2OTczMQ@@._V1_UY268_CR6,0,182,268_AL_.jpg", comedian_id: 4},
  {name: "Dave Chappelle: Equanimity", runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 5},
  {name: "Dave Chappelle: The Bird Revelation", runtime: 49, thumbnail: "https://m.media-amazon.com/images/M/MV5BNGYzOTE0YzEtMjc5NC00MTg2LTk2MDAtMzJlMjM1NTU1MjcwXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_UY268_CR5,0,182,268_AL_.jpg", comedian_id: 5},
  {name: "Dave Chappelle: For What It's Worth", runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BZGQ2MjBjNDEtYWVlNi00Nzc3LTg2NjUtYWY3ZTkwNTAwNDQyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 5},
  {name: "Dave Chappelle: Killin' Them Softly", runtime: 57, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 5},
  {name: "Steve Martin: A Wild and Crazy Guy", runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BNjk2MDk4Njk3M15BMl5BanBnXkFtZTgwNDYxMDA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg", comedian_id: 6},
  {name: "Steve Martin: Comedy Is Not Pretty", runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BNjk2MDk4Njk3M15BMl5BanBnXkFtZTgwNDYxMDA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg", comedian_id: 6},
  {name: "All Commercials... A Steve Martin Special", runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BNjk2MDk4Njk3M15BMl5BanBnXkFtZTgwNDYxMDA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg", comedian_id: 6},
  {name: "A Steven Wright Special", runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BODUyOTI4NWEtMzZjOS00ZGJjLTk5NzQtYzEwNGE1YjI2NGVmXkEyXkFqcGdeQXVyMzM5NDYyMjE@._V1_UY268_CR43,0,182,268_AL_.jpg", comedian_id: 7},
  {name: "Steven Wright: When the Leaves Blow Away", runtime: 43, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTg1OTA4MjU0N15BMl5BanBnXkFtZTcwODc1NzU0MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 7},
  {name: "Steven Wright: Wicker Chairs and Gravity", runtime: 60, comedian_id: 7},
  {name: "Billy Connolly: High Horse Tour Live", runtime: 96, thumbnail: "https://m.media-amazon.com/images/M/MV5BMDc3NmRlMjQtMWU3OC00N2YwLWJkNzktNjBkNjdkOTA3YjcyL2ltYWdlXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg", comedian_id: 8},
  {name: "Billy Connolly: Was It Something I Said?", runtime: 125, thumbnail: "https://m.media-amazon.com/images/M/MV5BNjFlMTMxYjctZjE5My00MzAwLWI4YWYtOWIxNzY4NDg2MTZhXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR15,0,182,268_AL_.jpg", comedian_id: 8},
  {name: "Billy Connolly: Live in New York", runtime: 92, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjA5NTM2MzAyNF5BMl5BanBnXkFtZTcwOTc5ODIzMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 8},
  {name: "Hasan Minhaj: Homecoming King", runtime: 73, thumbnail: "https://m.media-amazon.com/images/M/MV5BOWU2NTFjYTAtNDVkOC00YjJiLTg0NWMtODVmYzYwYjBiMmI3XkEyXkFqcGdeQXVyMjYwMTkwNDc@._V1_UY268_CR10,0,182,268_AL_.jpg", comedian_id: 9},
  {name: "Mike Birbiglia: Thank God for Jokes", runtime: 70, thumbnail: "https://m.media-amazon.com/images/M/MV5BNjM1NjNjOTUtMzk3Yi00NzZmLTg3NTQtZjE0N2U1MTYyZTViXkEyXkFqcGdeQXVyNDQyODU5MDQ@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 10},
  {name: "Mike Birbiglia: My Girlfriend's Boyfriend", runtime: 76, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTU0OTMzNDUyNV5BMl5BanBnXkFtZTgwMDYxNjkyMjE@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 10},
  {name: "Jerrod Carmichael: 8", runtime: 59, thumbnail: "https://m.media-amazon.com/images/M/MV5BMWJkMzllOWQtZWQyZC00YTE0LWI5N2QtNzliYzZjMDJmOWFmXkEyXkFqcGdeQXVyMjExNDAyOTU@._V1_UX182_CR0,0,182,268_AL_.jpg", comedian_id: 11},
  {name: "Jerrod Carmichael: Love at the Store", runtime: 54, thumbnail: "https://m.media-amazon.com/images/M/MV5BNTI5ODAwNDY2NV5BMl5BanBnXkFtZTgwMDk0NjQ3NTE@._V1_UY268_CR9,0,182,268_AL_.jpg", comedian_id: 11},
  {name: "Tracy Morgan: Staying Alive", runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BNWNmOWUyNjgtY2E0Ny00NTgyLWE3ZWMtZmFlNmY0NjM2Mjc3XkEyXkFqcGdeQXVyNjc5MDk0MzA@._V1_UY268_CR4,0,182,268_AL_.jpg", comedian_id: 12},
  {name: "Tracy Morgan: Bona Fide", runtime: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTkwMTMwNzE2MV5BMl5BanBnXkFtZTgwNzMxNDg2MTE@._V1_UY268_CR1,0,182,268_AL_.jpg", comedian_id: 12},
  {name: "Tracy Morgan: Black and Blue", runtime: 58, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjIyMzM1NDYyN15BMl5BanBnXkFtZTcwMzMyNzkxNQ@@._V1_UY268_CR9,0,182,268_AL_.jpg", comedian_id: 12}
]

comedians.each do |c|
  comedian = Comedian.create(c)
end

specials.each do |s|
  Special.create(s)
end
