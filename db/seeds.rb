require_relative '../app/models/comedian'
require_relative '../app/models/special'

comedian_1 = Comedian.create(name: "John Mulaney", age: "36", city: "Chicago")
special_1_1 = comedian_1.specials.create(name: "Kid Gorgeous at Radio City", run_time: "65", image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg")
special_1_2 = comedian_1.specials.create(name: "The Comeback Kid", run_time: "61", image: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
special_1_3 = comedian_1.specials.create(name: "New in Town", run_time: "60", image: "https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg")

comedian_2 = Comedian.create(name: "Jim Gaffigan", age: "52", city: "Chesterton")
special_2_1 = comedian_2.specials.create(name: "Noble Ape", run_time: "70", image: "https://m.media-amazon.com/images/M/MV5BODAyZjM3OGMtZmY2Zi00YjM0LTlhZDYtNTZmYmM2ODQ4NTNiXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
special_2_2 = comedian_2.specials.create(name: "Cinco", run_time: "73", image: "https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
special_2_3 = comedian_2.specials.create(name: "Obsessed", run_time: "60", image: "https://m.media-amazon.com/images/M/MV5BMjA1MDc3NzkyNl5BMl5BanBnXkFtZTgwNDYzNjM3MTE@._V1_UY268_CR9,0,182,268_AL_.jpg")

comedian_3 = Comedian.create(name: "Amy Schumer", age: "37", city: "NYC")
special_3_1 = comedian_3.specials.create(name: "The Leather Special", run_time: "57", image: "https://m.media-amazon.com/images/M/MV5BMGMxYWY1MTktZDFlNC00YjdjLTk5MGMtODEwNTZiY2MxZjk1XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_UY268_CR4,0,182,268_AL_.jpg")
special_3_2 = comedian_3.specials.create(name: "Amy Schumer: Live at the Apollo", run_time: "61", image: "https://m.media-amazon.com/images/M/MV5BMTkzMzU1MTc3M15BMl5BanBnXkFtZTgwNjYyMjQ5NjE@._V1_UX182_CR0,0,182,268_AL_.jpg")
special_3_3 = comedian_3.specials.create(name: "Mostly Sexy Stuff", run_time: "61", image: "https://m.media-amazon.com/images/M/MV5BMTQxOTI2ODgxNF5BMl5BanBnXkFtZTgwMzc0NDAxMzE@._V1_UY268_CR9,0,182,268_AL_.jpg")

comedian_4 = Comedian.create(name: "Kevin Hart", age: "39", city: "Philadelphia")
special_4_1 = comedian_4.specials.create(name: "What Now?", run_time: "96", image: "https://m.media-amazon.com/images/M/MV5BNzI2MDk3OTA5N15BMl5BanBnXkFtZTgwMDU1MDgxMDI@._V1_UX182_CR0,0,182,268_AL_.jpg")
special_4_2 = comedian_4.specials.create(name: "Laugh at My Pain", run_time: "89", image: "https://m.media-amazon.com/images/M/MV5BMjI4NjA5NTI0OV5BMl5BanBnXkFtZTcwMTU0MzI1Ng@@._V1_UY268_CR1,0,182,268_AL_.jpg")
special_4_3 = comedian_4.specials.create(name: "I'm a Grown Little Man", run_time: "73", image: "https://m.media-amazon.com/images/M/MV5BMjI4MTYwNTUzMF5BMl5BanBnXkFtZTcwODk1Mjk3Mw@@._V1_UY268_CR4,0,182,268_AL_.jpg")

comedian_5 = Comedian.create(name: "Jeff Dunham", age: "56", city: "Dallas")
special_5_1 = comedian_5.specials.create(name: "Minding the Monsters", run_time: "80", image: "https://m.media-amazon.com/images/M/MV5BYTU2MTgzMzMtZGIwMy00ZGNiLWEzODAtZGIyMjhiMjQ3NTg2XkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg")
special_5_2 = comedian_5.specials.create(name: "Controlled Chaos", run_time: "97", image: "https://m.media-amazon.com/images/M/MV5BNDk1NzE3NDc5M15BMl5BanBnXkFtZTgwMjIyNjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg")
special_5_3 = comedian_5.specials.create(name: "Spark of Insanity", run_time: "80", image: "https://m.media-amazon.com/images/M/MV5BNDhiY2EyZmEtY2U0ZS00YmVmLWIyMDMtOTI3MzNmMmU1MGZmXkEyXkFqcGdeQXVyMjA5MDMyMjE@._V1_UY268_CR3,0,182,268_AL_.jpg")

comedian_6 = Comedian.create(name: "Jim Jefferies", age: "41", city: "Sydney")
special_6_1 = comedian_6.specials.create(name: "This is Me Now", run_time: "70", image: "https://m.media-amazon.com/images/M/MV5BMzAxZDNlMmEtYjk2Ny00YzRjLTkwOTQtMDNkYmExMDZhNGNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
special_6_2 = comedian_6.specials.create(name: "Freedumb", run_time: "86", image: "https://m.media-amazon.com/images/M/MV5BYmZkZDFlMzAtNjQ5MS00NDE4LWEwMjktYTRmOTc3Mjc2NjI0XkEyXkFqcGdeQXVyMjQ4MzkyMjE@._V1_UX182_CR0,0,182,268_AL_.jpg")
special_6_3 = comedian_6.specials.create(name: "Fully Functional", run_time: "61", image: "https://m.media-amazon.com/images/M/MV5BMTQ2ODMyNDg3OF5BMl5BanBnXkFtZTgwMDAwNzA2MDE@._V1_UX182_CR0,0,182,268_AL_.jpg")

comedian_8 = Comedian.create(name: "Adam Sandler", age: "52", city: "NYC")
special_8_1 = comedian_8.specials.create(name: "100% Fresh", run_time: "62", image: "https://m.media-amazon.com/images/M/MV5BNjgzMjg3NDYyOV5BMl5BanBnXkFtZTgwOTU5NTY0NjM@._V1_SX1500_CR0,0,1500,999_AL_.jpg")
special_8_2 = comedian_8.specials.create(name: "SNL: The Best of Adam Sandler", run_time: "90", image: "https://images-na.ssl-images-amazon.com/images/I/81smY7tkoTL._SY445_.jpg")
special_8_3 = comedian_8.specials.create(name: "The Bad Boys of SNL", run_time: "90", image: "https://m.media-amazon.com/images/M/MV5BMjAyOTEyMTc1M15BMl5BanBnXkFtZTYwNjk0NzA5._V1_UX182_CR0,0,182,268_AL_.jpg")

# comedian_9 = Comedian.create(name: "", age: "", city: "")
# special_9_1 = comedian_9.specials.create(name: "", run_time: "", image: "")
# special_9_2 = comedian_9.specials.create(name: "", run_time: "", image: "")
# special_9_3 = comedian_9.specials.create(name: "", run_time: "", image: "")
#
# comedian_10 = Comedian.create(name: "", age: "", city: "")
# special_10_1 = comedian_10.specials.create(name: "", run_time: "", image: "")
# special_10_2 = comedian_10.specials.create(name: "", run_time: "", image: "")
# special_10_3 = comedian_10.specials.create(name: "", run_time: "", image: "")
#
# comedian_11 = Comedian.create(name: "", age: "", city: "")
# special_11_1 = comedian_11.specials.create(name: "", run_time: "", image: "")
# special_11_2 = comedian_11.specials.create(name: "", run_time: "", image: "")
# special_11_3 = comedian_11.specials.create(name: "", run_time: "", image: "")
#
# comedian_12 = Comedian.create(name: "", age: "", city: "")
# special_12_1 = comedian_12.specials.create(name: "", run_time: "", image: "")
# special_12_2 = comedian_12.specials.create(name: "", run_time: "", image: "")
# special_12_3 = comedian_12.specials.create(name: "", run_time: "", image: "")


# comedian = Comedian.create(...)
# special_1 = comedian.specials.create(...)
# special_2 = comedian.specials.create(...)
#
# #or
#
# special_1 = Special.create(...)
# comedian = Comedian(..., specials: [special_1, special_2])
#
# # or
#
# comedian = COmedian.create(...)
# special_1 = Special.create(...)
# comedian.specials << special_1
