require './app/models/special.rb'
require './app/models/comedian.rb'

Special.destroy_all
Comedian.destroy_all

c1 = Comedian.create(name: 'Patton Oswalt', age: 50, city: "Portsmouth")
c1.specials.create(comedian_id: 1, name: "Talking for Clapping", runtime: 65, thumb: "https://m.media-amazon.com/images/M/MV5BZmMyYzAzMzktOWM4MS00YmI2LThmM2MtNjBkODZkOWQxODNmXkEyXkFqcGdeQXVyNjYzMDA4MTI@._V1_UY268_CR3,0,182,268_AL_.jpg")
c1.specials.create(comedian_id: 1, name: "Tragedy Plus Comedy Equals Time", runtime: 59, thumb: "https://m.media-amazon.com/images/M/MV5BODU2MDEyNGYtODE3ZC00YjUyLTk3ODctYTU2MzM5Y2M3NWM4XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR0,0,182,268_AL_.jpg")
c1.specials.create(comedian_id: 1, name: "No Reason to Complain", runtime: 42, thumb: "https://m.media-amazon.com/images/M/MV5BMTk3MjUxODI5NF5BMl5BanBnXkFtZTcwMjcxMTIzMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")

c2 = Comedian.create(name: 'Whoopi Goldberg', age: 63, city: "New York City")
c2.specials.create(comedian_id: 2, name: "Direct from Broadway", runtime: 75, thumb: "https://m.media-amazon.com/images/M/MV5BMGE4MDcwZTMtYjIxNC00NjkxLWI1MTgtOTgzMDQ5ZTgzZDc4XkEyXkFqcGdeQXVyMDgyNjA5MA@@._V1_UX182_CR0,0,182,268_AL_.jpg")
c2.specials.create(comedian_id: 2, name: "Chez Whoopi", runtime: 56, thumb: "https://m.media-amazon.com/images/M/MV5BNjE5OGZhNTEtZjQ4MC00YWMzLWI3ODAtMTMzYWM0NWYyMzZiXkEyXkFqcGdeQXVyODQ1NTk5OQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
c2.specials.create(comedian_id: 2, name: "Fontaine: Why am I Straight?", runtime: 54, thumb: "https://m.media-amazon.com/images/M/MV5BN2VmZjRhMzQtY2M4Mi00NDdmLTgxYzgtZWU4OGIxZjQ2N2JmXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_UX182_CR0,0,182,268_AL_.jpg")
c2.specials.create(comedian_id: 2, name: "Back to Broadway - The 20th Anniversary", runtime: 90, thumb: "https://m.media-amazon.com/images/M/MV5BMjIwMjU3MDY0OF5BMl5BanBnXkFtZTcwMjM1NDIzMQ@@._V1_UY268_CR9,0,182,268_AL_.jpg")

c3 = Comedian.create(name: 'Steve Martin', age: 73, city: "Waco")
c3.specials.create(comedian_id: 3, name: "A Wild and Crazy Guy", runtime: 60, thumb: "https://m.media-amazon.com/images/M/MV5BNjk2MDk4Njk3M15BMl5BanBnXkFtZTgwNDYxMDA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg")
c3.specials.create(comedian_id: 3, name: "Comedy Is Not Pretty", runtime: 60, thumb: "https://m.media-amazon.com/images/M/MV5BNjk2MDk4Njk3M15BMl5BanBnXkFtZTgwNDYxMDA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg")

c4 = Comedian.create(name: 'Jim Carrey', age: 57, city: "Ontario")
c4.specials.create(comedian_id: 4, name: "Unnatural Act", runtime: 46, thumb: "https://m.media-amazon.com/images/M/MV5BZGQzYTA5ZjgtZjNiZC00OGUwLThkYWMtY2E4MzdkNmZiNjE3XkEyXkFqcGdeQXVyMTgwOTE5NDk@._V1_UY268_CR8,0,182,268_AL_.jpg")

c5 = Comedian.create(name: 'Denis Leary', age: 61, city: "Worcester")
c5.specials.create(comedian_id: 5, name: "Lock 'N Load", runtime: 65, thumb: "https://m.media-amazon.com/images/M/MV5BYmEwZjcyNDktNGNjZS00N2QwLWI5NmQtOGZiZTZiNDk3ZjYwXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_UY268_CR3,0,182,268_AL_.jpg")
c5.specials.create(comedian_id: 5, name: "Merry F#%$in' Christmas", runtime: 60, thumb: "https://m.media-amazon.com/images/M/MV5BNGM1N2YzNGYtMWU1MC00MThjLThlZmMtYWI3NTk4N2FiYWQxXkEyXkFqcGdeQXVyMjUyNDk2ODc@._V1_UY268_CR43,0,182,268_AL_.jpg")
c5.specials.create(comedian_id: 5, name: "No Cure for Cancer?", runtime: 62, thumb: "https://m.media-amazon.com/images/M/MV5BMTI0MTA3MzE1N15BMl5BanBnXkFtZTcwODc2OTUxMQ@@._V1_UY268_CR2,0,182,268_AL_.jpg")

c6 = Comedian.create(name: 'Dane Cook', age: 63, city: "Boston")
c6.specials.create(comedian_id: 6, name: "Troublemaker", runtime: 75, thumb: "https://m.media-amazon.com/images/M/MV5BOWQ0ODg4OWMtOWQ3MS00MjJjLWJiMTItMzVkMzgxNzg0OTlmXkEyXkFqcGdeQXVyMTgwOTE5NDk@._V1_UY268_CR8,0,182,268_AL_.jpg")
c6.specials.create(comedian_id: 6, name: "Vicious Circle", runtime: 56, thumb: "https://m.media-amazon.com/images/M/MV5BMTgwNDkzNTk4MF5BMl5BanBnXkFtZTcwMzQ3NjgzMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
c6.specials.create(comedian_id: 6, name: "Isolated Incident", runtime: 54, thumb: "https://m.media-amazon.com/images/M/MV5BODE3OTM2OTg2MV5BMl5BanBnXkFtZTgwOTM0MzA2MDE@._V1_UX182_CR0,0,182,268_AL_.jpg")

c7 = Comedian.create(name: 'Robin Williams', age: 63, city: "Chicago")
c7.specials.create(comedian_id: 7, name: "Weapons of Self Destruction", runtime: 90, thumb: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_UY268_CR4,0,182,268_AL_.jpg")
c7.specials.create(comedian_id: 7, name: "An Evening at the Met", runtime: 65, thumb: "https://m.media-amazon.com/images/M/MV5BYzM0Zjc0OWItYWI1MC00NjQwLWE4YTktYWY1MDQyYjM3NjRkXkEyXkFqcGdeQXVyMTQ4NDY5OTc@._V1_UX182_CR0,0,182,268_AL_.jpg")
c7.specials.create(comedian_id: 7, name: "Off the Wall", runtime: 60, thumb: "https://m.media-amazon.com/images/M/MV5BYWYwNTVkMTQtNTM5Ni00ZTFmLWEyYTEtODViNDQwNDM5ZjEyL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMjg5NTA5Mjg@._V1_UY268_CR4,0,182,268_AL_.jpg")

c8 = Comedian.create(name: 'Russell Brand', age: 43, city: "Grays")
c8.specials.create(comedian_id: 8, name: "Re-Birth", runtime: 63, thumb: "https://m.media-amazon.com/images/M/MV5BZjIyZTM3YWItNzY3Ni00ODg4LWFhOWMtODM5ZWQ0MjhjYjQ4XkEyXkFqcGdeQXVyMTY5OTQzNzY@._V1_UY268_CR4,0,182,268_AL_.jpg")
c8.specials.create(comedian_id: 8, name: "Doing Life - Live", runtime: 76, thumb: "https://m.media-amazon.com/images/M/MV5BODk3NzYxYTItZDdjNS00YTAxLTg5MDctNDkwZWVlMmUxM2Y0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMjYzMjA3NzI@._V1_UY268_CR3,0,182,268_AL_.jpg")

c9 = Comedian.create(name: 'Kevin Hart', age: 39, city: "Philadelphia")
c9.specials.create(comedian_id: 9, name: "Seriously Funny", runtime: 72, thumb: "https://m.media-amazon.com/images/M/MV5BMTcxNTI2OTA4Ml5BMl5BanBnXkFtZTcwMDA1MjE5NA@@._V1_.jpg")
c9.specials.create(comedian_id: 9, name: "I'm a Grown Little Man", runtime: 73, thumb: "https://m.media-amazon.com/images/M/MV5BMjI4MTYwNTUzMF5BMl5BanBnXkFtZTcwODk1Mjk3Mw@@._V1_.jpg")
c9.specials.create(comedian_id: 9, name: "Laugh at My Pain", runtime: 90, thumb: "https://m.media-amazon.com/images/M/MV5BMjI4NjA5NTI0OV5BMl5BanBnXkFtZTcwMTU0MzI1Ng@@._V1_.jpg")

c10 = Comedian.create(name: 'Ken Jeong', age: 49, city: "Detroit")
c10.specials.create(comedian_id: 10, name: "You Complete Me, Ho", runtime: 62, thumb: "https://m.media-amazon.com/images/M/MV5BNTg2OGQ3ZjAtZWE3My00ZjlmLTg3NmYtMGJhYjM3MWI2MTIwXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
c10.specials.create(comedian_id: 10, name: "Kims of Comedy", runtime: 90, thumb: "https://m.media-amazon.com/images/M/MV5BZjk4MTA2YWUtMjU1NC00NDA4LTkzM2MtZWQ0YTFlMWY1YTgwXkEyXkFqcGdeQXVyNjIwODUwNTc@._V1_.jpg")

c11 = Comedian.create(name: 'Eddie Murphy', age: 57, city: "Brooklyn")
c11.specials.create(comedian_id: 11, name: "Delirious", runtime: 69, thumb: "https://m.media-amazon.com/images/M/MV5BMTQ5MDcyODU0Nl5BMl5BanBnXkFtZTcwMTgxNjA0MQ@@._V1_.jpg")
c11.specials.create(comedian_id: 11, name: "Raw", runtime: 93, thumb: "https://m.media-amazon.com/images/M/MV5BOWEwYTk4YTgtZGVjNi00MmI0LTkwOTItOWUxYzBlN2YwZWFkXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg")

c12 = Comedian.create(name: 'Eddie Izzard', age: 57, city: "Aden")
c12.specials.create(comedian_id: 12, name: "Live at Madison Square Garden", runtime: 90, thumb: "https://m.media-amazon.com/images/M/MV5BZTBmNTNkNTktOTk5Mi00OTIzLTkxMjEtNWQ0ZmNjMjg4ZmQwXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_SX714_AL_.jpg")
c12.specials.create(comedian_id: 12, name: "Live from Wembley", runtime: 90, thumb: "https://m.media-amazon.com/images/M/MV5BMjE4NTUwMDg3NF5BMl5BanBnXkFtZTcwNTgwMjYxMw@@._V1_.jpg")
c12.specials.create(comedian_id: 12, name: "Sexie", runtime: 97, thumb: "https://m.media-amazon.com/images/M/MV5BM2IzMWJkNTYtOWQyZi00MmY2LTk4NGYtZTQ0NmFiZDFlM2Y3XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
c12.specials.create(comedian_id: 12, name: "Circle", runtime: 82, thumb: "https://m.media-amazon.com/images/M/MV5BMTQ0NTgyMTAyNl5BMl5BanBnXkFtZTcwMDA1NzAyMQ@@._V1_.jpg")
