# require './app/models/special.rb'
# require './app/models/comedian.rb'
#
# Special.destroy_all
# Playlist.destroy_all
#
# wasn't able to get seeding to work with $rake db: seed

Comedian.create(name: "Adam Sandler",	age: 52,	home_town: "New York, NY",	photo: "https://cdn1.thr.com/sites/default/files/2012/12/6_degrees_of_judd_apatow_adam_sandler.jpg")
Comedian.create(name: "John Mulaney",	age: 36,	home_town: "Chicago, IL", photo: "https://resizing.flixster.com/zOSxtyjb51wl7o4ceVADrTui2IY=/874x779/v1.cjs0MzU5NTtqOzE3OTgzOzEyMDA7ODc0Ozc3OQ")
Comedian.create(name: "Dave Chappelle",	age: 45,	home_town: "Washington D.C.",	photo: "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTQzMzA3MzU5NDg4MzIxMDk2/dave-chappelle_gettyimages-481295252jpg.jpg")
Comedian.create(name: "Amy Schumer",	age: 37,	home_town: "New York, NY",	photo: "https://www.biography.com/.image/t_share/MTMyOTEyNjM4ODM2MzgyMTc0/amy-schumer_shutterstock_268854908_1290jpg.jpg")
Comedian.create(name: "Daniel Tosh",	age: 43,	home_town: "Titusville, FL",	photo: "https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/daniel_tosh_800x600.jpg")
Comedian.create(name: "Jim Gaffigan",	age: 52,	home_town: "Elgin, IL", photo: "https://peopledotcom.files.wordpress.com/2018/06/jim-gaffigan1.jpg")
Comedian.create(name: "Chelsea Handler",	age: 44,	home_town: "Livingston, NJ",	photo: "https://cdn1.thr.com/sites/default/files/imagecache/scale_crop_768_433/2018/03/chelsea_handler_-_h_2018.jpg")
Comedian.create(name: "Demitri Martin",	age: 45,	home_town: "New York, NY",	photo: "https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_.jpg")
Comedian.create(name: "Ali Wong",	age: 36,	home_town: "San Francisco, CA",	photo: "https://pixel.nymag.com/imgs/fashion/daily/2018/05/17/17-ali-wong-netflix.w700.h700.jpg")
Comedian.create(name: "Hannibal Buress",	age: 36,	home_town: "Chicago, IL",	photo: "https://pmcvariety.files.wordpress.com/2018/03/hannibal-buress.jpg?w=1000")
Comedian.create(name: "Bill Burr",	age: 50,	home_town: "Canton, MA",	photo: "https://images1.phoenixnewtimes.com/imager/u/original/10959023/42698437685_b6e6de2011_k.jpg")
Comedian.create(name: "Jim Jeffries",	age: 42,	home_town: "Sydney, Australia",	photo: "https://i.axs.com/2018/08/jim-jefferies_08-02-18_20_5b63235ececed.jpg")


Special.create(comedian_id: 1, name: "100% Fresh",	run_time: 73, thumbnail: "https://m.media-amazon.com/images/M/MV5BNWNiYWJlNzQtYmMwMS00MjUyLWE4YjAtNDVjZWUwNzBjZDQ1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian_id: 2, name: "The Comeback Kid", run_time: 61, thumbnail: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian_id: 2, name: "Kid Gorgeous",	run_time: 64, thumbnail: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian_id: 3, name: "Killin' Them Softly",	run_time: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg")
Special.create(comedian_id: 3, name: "Equanimity",	run_time: 64, thumbnail: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
Special.create(comedian_id: 4, name: "The Leather Special",	run_time: 57, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGMxYWY1MTktZDFlNC00YjdjLTk5MGMtODEwNTZiY2MxZjk1XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian_id: 4, name: "Live at the Apollo",	run_time: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTkzMzU1MTc3M15BMl5BanBnXkFtZTgwNjYyMjQ5NjE@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian_id: 5, name: "People Pleaser",	run_time: 62, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTAxOTk4NDk3MzheQTJeQWpwZ15BbWU4MDk5Mjg1Nzgx._V1_UY268_CR9,0,182,268_AL_.jpg")
Special.create(comedian_id: 5, name: "Completely Serious",	run_time: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTk0NDU0NjAyOF5BMl5BanBnXkFtZTgwMzU2NjcwMzE@._V1_UY268_CR3,0,182,268_AL_.jpg")
Special.create(comedian_id: 6, name: "Cinco", run_time: 73, thumbnail: "https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian_id: 6, name: "Noble Ape", run_time: 70, thumbnail: "https://m.media-amazon.com/images/M/MV5BODAyZjM3OGMtZmY2Zi00YjM0LTlhZDYtNTZmYmM2ODQ4NTNiXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian_id: 6, name: "Mr. Universe",	run_time: 74, thumbnail: "https://m.media-amazon.com/images/M/MV5BNTE4NjU0NTYxM15BMl5BanBnXkFtZTcwMzAzMjA1OQ@@._V1_UY268_CR3,0,182,268_AL_.jpg")
Special.create(comedian_id: 7, name: "Uganda Be Kidding Me Live", run_time: 71, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTgzOTI0NDg2N15BMl5BanBnXkFtZTgwMjYzODY3MjE@._V1_UY268_CR1,0,182,268_AL_.jpg")
Special.create(comedian_id: 8, name: "The Overthinker", run_time: 56, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian_id: 8, name: "Live (At the Time)",	run_time: 61, thumbnail: "https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian_id: 9, name: "Baby Cobra",	run_time: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BOWZmODIxMDEtZGY1My00OGEyLWE3NTQtN2Y4MTFkMzdlMTc4XkEyXkFqcGdeQXVyNjcwNDI1MDk@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian_id: 9, name: "Hard Knock Wife", run_time: 64, thumbnail: "https://m.media-amazon.com/images/M/MV5BMWVkZDNjZTMtMTY0Yi00OGQ0LTliMDEtMWMxYzljYzZlYTY3XkEyXkFqcGdeQXVyMTEzNjA2NzM@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian_id: 10, name:  "Comedy Camisado",	run_time: 66, thumbnail: "https://m.media-amazon.com/images/M/MV5BNDQ0ZDA3NTQtNzI3NC00Y2NiLWI0ZTctN2RjNDYxNWEyODY4XkEyXkFqcGdeQXVyNTQwMDk4NDM@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian_id: 11, name:  "You People Are All the Same",	run_time: 68, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian_id: 11, name:  "I'm Sorry You Feel That Way",	run_time: 80, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian_id: 11, name:  "Walk Your Way Out",	run_time: 77, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_UY268_CR10,0,182,268_AL_.jpg")
Special.create(comedian_id: 12, name:  "Bare", run_time: 76, thumbnail: "https://m.media-amazon.com/images/M/MV5BMmRlNDE0ZDctZTMwYi00MWQ2LTk2MzctNjdjODM0YWY1MjNmXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian_id: 12, name:  "Freedumb", run_time: 86, thumbnail: "https://m.media-amazon.com/images/M/MV5BYmZkZDFlMzAtNjQ5MS00NDE4LWEwMjktYTRmOTc3Mjc2NjI0XkEyXkFqcGdeQXVyMjQ4MzkyMjE@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian_id: 12, name:  "This Is Me Now", run_time: 70, thumbnail: "https://m.media-amazon.com/images/M/MV5BMzAxZDNlMmEtYjk2Ny00YzRjLTkwOTQtMDNkYmExMDZhNGNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
