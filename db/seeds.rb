require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

Comedian.create(name: 'George Carlin', age: 71, city: 'New York City, New York')
Comedian.create(name: 'Richard Pryor', age: 65, city: 'Peoria, Illinois')
Comedian.create(name: 'Robin Williams', age: 63, city: 'Chicago, Illinois')
Comedian.create(name: 'Demetri Martin', age: 45, city: 'New York City, New York')
Comedian.create(name: 'Jim Gaffigan', age: 52, city: 'Chesterson, Indiana')
Comedian.create(name: 'Dave Chappelle', age: 45, city: 'Washington, District of Columbia')
Comedian.create(name: 'Hasan Minhaj', age: 33, city: 'Davis, California')
Comedian.create(name: 'Bo Burnham', age: 28, city: 'Hamilton, Massachusetts')
Comedian.create(name: 'John Mulaney', age: 36, city: 'Chicago, Illinois')
Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg, South Africa')
Comedian.create(name: 'Jerry Seinfeld', age: 64, city: 'Brooklyn, New York City, New York')
Comedian.create(name: 'Bill Hicks', age: 32, city: 'Little Rock, Arkansas')

Special.create(name: 'Bill Hicks: Revelations', comedian_id: 12, run_time_minutes: 57, image_url: 'https://m.media-amazon.com/images/M/MV5BMjM1OTAwMDE3N15BMl5BanBnXkFtZTgwNjkzMzYwNzE@._V1_.jpg')
Special.create(name: 'Bill Hicks: Relentless', comedian_id: 12, run_time_minutes: 61, image_url: 'https://m.media-amazon.com/images/M/MV5BMjAwNDYyMjg1MV5BMl5BanBnXkFtZTcwNjEwMjEzMQ@@._V1_.jpg')

Special.create(name: "Jerry Seinfeld: 'I'm Telling You for the Last Time", comedian_id: 11, run_time_minutes: 75, image_url: 'https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg')
Special.create(name: 'Stand-Up Confidential', comedian_id: 11, run_time_minutes: 55, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/45/Stand-Up_Confidential_video_box.jpg/220px-Stand-Up_Confidential_video_box.jpg')
Special.create(name: 'Jerry Before Seinfeld', comedian_id: 11, run_time_minutes: 61, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Jerry_Before_Seinfeld_poster.jpg/220px-Jerry_Before_Seinfeld_poster.jpg')

Special.create(name: 'Trevor Noah: Son of Patricia', comedian_id: 10, run_time_minutes: 63, image_url: 'https://m.media-amazon.com/images/M/MV5BMTU4MTA5NjMyNl5BMl5BanBnXkFtZTgwNDY0OTI4NjM@._V1_SY1000_CR0,0,675,1000_AL_.jpg')
Special.create(name: 'Trevor Noah: Afraid of the Dark', comedian_id: 10, run_time_minutes: 67, image_url: "https://m.media-amazon.com/images/M/MV5BMTZhNjNjNGUtYTc2Ni00ZDc4LWJjNDMtYjVlOTI5OGI5YzE5XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
Special.create(name: 'Trevor Noah: Lost in Translation', comedian_id: 10, run_time_minutes: 62, image_url: "https://m.media-amazon.com/images/M/MV5BMmNjYmY3N2QtOTUwNC00ZjI4LWI0MzUtZGRiOTg0M2U1MTYyXkEyXkFqcGdeQXVyMjQ4NDAyMDI@._V1_.jpg")
Special.create(name: "Trevor Noah: Pay Back the Funny", comedian_id: 10, run_time_minutes: 84, image_url: "https://m.media-amazon.com/images/M/MV5BYmU1NWU3YmYtNjg1MS00YTU1LWE5OGYtZTY2NWNlNjA0YWYyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_CR0,0,694,1000_AL_.jpg")

Special.create(name: "John Mulaney: Kid Gorgeous at Radio City", comedian_id: 9, run_time_minutes: 65, image_url: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
Special.create(name: "John Mulaney: The Comeback Kid", comedian_id: 9, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg")
Special.create(name: "John Mulaney: New in Town", comedian_id: 9, run_time_minutes: 62, image_url: "https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_.jpg")

Special.create(name: "Bo Burnham: Words, Words, Words", comedian_id: 8, run_time_minutes: 65, image_url: "https://m.media-amazon.com/images/M/MV5BNzM3MmE1MjItNjhmNy00NmU1LTgyOTctNjNmYTgzYmEwODMwXkEyXkFqcGdeQXVyODU3NzEzOTk@._V1_.jpg")
Special.create(name: "Bo Burnham: what.", comedian_id: 8, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BZWI1YmY1YjctNTU3MS00MDFhLTkzNjUtMDgyYTEwYTkxZWJhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
Special.create(name: "Bo Burnham: Make Happy", comedian_id: 8, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BZjg0YmNiZTAtZDI2Yi00MTVhLTk3ZTctM2JiNjQwY2ZhMzg4XkEyXkFqcGdeQXVyMzE1NjI3MjI@._V1_SY1000_CR0,0,675,1000_AL_.jpg")

Special.create(name: "Hasan Minhaj: Homecoming King", comedian_id: 7, run_time_minutes: 73, image_url: "https://m.media-amazon.com/images/M/MV5BOWU2NTFjYTAtNDVkOC00YjJiLTg0NWMtODVmYzYwYjBiMmI3XkEyXkFqcGdeQXVyMjYwMTkwNDc@._V1_.jpg")

Special.create(name: "Dave Chappelle: Killin' Them Softly", comedian_id: 6, run_time_minutes: 57, image_url: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg")
Special.create(name: "Dave Chappelle: For What It's Worth", comedian_id: 6, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BZGQ2MjBjNDEtYWVlNi00Nzc3LTg2NjUtYWY3ZTkwNTAwNDQyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
Special.create(name: "Dave Chappelle: Equanimity", comedian_id: 6, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")

Special.create(name: "Jim Gaffigan: Obsessed", comedian_id: 5, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMjA1MDc3NzkyNl5BMl5BanBnXkFtZTgwNDYzNjM3MTE@._V1_.jpg")
Special.create(name: "Jim Gaffigan: King Baby", comedian_id: 5, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMjI3ODgwMDU2NF5BMl5BanBnXkFtZTgwMTczMzA2MDE@._V1_.jpg")
Special.create(name: "Jim Gaffigan: Mr. Universe", comedian_id: 5, run_time_minutes: 78, image_url: "https://m.media-amazon.com/images/M/MV5BNTE4NjU0NTYxM15BMl5BanBnXkFtZTcwMzAzMjA1OQ@@._V1_.jpg")
Special.create(name: "Jim Gaffigan: Cinco", comedian_id: 5, run_time_minutes: 73, image_url: "https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
Special.create(name: "Jim Gaffigan: Noble Ape", comedian_id: 5, run_time_minutes: 90, image_url: "https://m.media-amazon.com/images/M/MV5BODAyZjM3OGMtZmY2Zi00YjM0LTlhZDYtNTZmYmM2ODQ4NTNiXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
Special.create(name: "Jim Gaffigan: Beyond the Pale", comedian_id: 5, run_time_minutes: 72, image_url: "https://m.media-amazon.com/images/M/MV5BMTk3NjU2ODY5NF5BMl5BanBnXkFtZTgwNTEyODkwMzE@._V1_.jpg")

Special.create(name: "Demetri Martin: The Overthinker", comedian_id: 4, run_time_minutes: 56, image_url: "https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_.jpg")
Special.create(name: "Demetri Martin: Live (At the Time)", comedian_id: 4, run_time_minutes: 61, image_url: "https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_SY1000_SX675_AL_.jpg")
Special.create(name: "Demetri Martin. Person.", comedian_id: 4, run_time_minutes: 42, image_url: "https://m.media-amazon.com/images/M/MV5BMjE0MDgwNDE0MF5BMl5BanBnXkFtZTcwMDAzMDQ1MQ@@._V1_.jpg")

Special.create(name: 'Robin Williams: Weapons of Self Destruction', comedian_id: 3, run_time_minutes: 90, image_url: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_.jpg")
Special.create(name: "Robin Williams Live on Broadway", comedian_id: 3, run_time_minutes: 99, image_url: "https://m.media-amazon.com/images/M/MV5BMTc1MTQ4NjcyOF5BMl5BanBnXkFtZTcwODIyNzIyMQ@@._V1_.jpg")

Special.create(name: "Richard Pryor: Live on the Sunset Strip", comedian_id: 2, run_time_minutes: 82, image_url: "https://m.media-amazon.com/images/M/MV5BNTI1MWQ1M2YtMTRjNS00NTlhLThkNzctODk2ZmQ2NmMzN2ViXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_SY1000_CR0,0,658,1000_AL_.jpg")
Special.create(name: "Richard Pryor: Live in Concert", comedian_id: 2, run_time_minutes: 78, image_url: "https://m.media-amazon.com/images/M/MV5BMTg4NDkwMzYwNF5BMl5BanBnXkFtZTYwNTMzMTQ5._V1_.jpg")

Special.create(name: "On Location: George Carlin at Phoenix", comedian_id: 1, run_time_minutes: 81, image_url: "https://m.media-amazon.com/images/M/MV5BNTM1NTE3MDI3N15BMl5BanBnXkFtZTcwNjE4NTkxMQ@@._V1_.jpg")
Special.create(name: "George Carlin: Carlin on Campus", comedian_id: 1, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMTIyMzk4NjA3OV5BMl5BanBnXkFtZTcwOTY4ODYyMQ@@._V1_.jpg")
Special.create(name: "George Carlin: You Are All Diseased", comedian_id: 1, run_time_minutes: 65, image_url: "https://m.media-amazon.com/images/M/MV5BMTIxMjA3OTYwNF5BMl5BanBnXkFtZTcwMTU5OTcxMQ@@._V1_.jpg")
Special.create(name: "George Carlin: Complaints & Grievances", comedian_id: 1, run_time_minutes: 55, image_url: "https://m.media-amazon.com/images/M/MV5BMTIyNTg1MjU0Nl5BMl5BanBnXkFtZTcwNzY2ODYyMQ@@._V1_.jpg")
Special.create(name: "George Carlin: Life Is Worth Losing", comedian_id: 1, run_time_minutes: 75, image_url: "https://m.media-amazon.com/images/M/MV5BMTI2ODk4OTg1NF5BMl5BanBnXkFtZTcwNjM5MzU0MQ@@._V1_.jpg")
Special.create(name: "George Carlin... It's Bad for Ya!", comedian_id: 1, run_time_minutes: 70, image_url: "https://m.media-amazon.com/images/M/MV5BMzI0Njk5ZWYtNGVhNy00MjVmLWFhMWItN2NhNGQ5NDQ3YmE3XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
