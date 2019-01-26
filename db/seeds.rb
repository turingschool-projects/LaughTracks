require_relative '../app/models/comedian'
require_relative '../app/models/special'

Comedian.destroy_all
Special.destroy_all

aziz = Comedian.create(name:"Aziz Ansari", age: 34, city:"LA", image_source: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Aziz_Ansari_2012_Shankbone.JPG/220px-Aziz_Ansari_2012_Shankbone.JPG")
ellen = Comedian.create(name:"Ellen Degeneres", age: 60, city:"LA", image_source: "https://cdn1.thr.com/sites/default/files/imagecache/NFE_portrait/2017/03/ellen_headshot_8.26-p_2017.jpg")
rock = Comedian.create(name:"Chris Rock", age: 53, city:"New York", image_source: "https://pixel.nymag.com/imgs/daily/vulture/2018/02/14/14-chris-rock.w700.h700.jpg")
silverman = Comedian.create(name:"Sarah Silverman", age: 48, city:"Bedford", image_source: "https://peopledotcom.files.wordpress.com/2017/08/sarah-silverman.jpg")
hgadsby = Comedian.create(name:"Hannah Gadsby", age: 41, city:"Smithton", image_source: "https://95269-269417-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2018/09/HannahGadsby.jpg")
tig = Comedian.create(name:"Tig Notaro", age: 47, city:"Jackson", image_source: "https://media.npr.org/assets/img/2018/05/16/ap_517890906880_wide-4020dcecedb65a7bd758013d893a821b76d94c6e-s800-c85.jpg")
wong = Comedian.create(name:"Ali Wong", age: 36, city:"San Francisco", image_source: "https://cdn1.thr.com/sites/default/files/imagecache/landscape_928x523/2018/05/042418_thr_aliwong06410-h_2018_thr.jpg")
chappelle = Comedian.create(name:"Dave Chappelle", age: 45, city:"Washington", image_source: "https://specials-images.forbesimg.com/imageserve/5b4391d331358e2c990e8ee0/416x416.jpg?background=000000&cropX1=570&cropX2=2417&cropY1=137&cropY2=1984")
mikeb   = Comedian.create(name:"Mike Birbiglia", age: 40, city:"Shrewsbury", image_source: "https://www.trbimg.com/img-51016774/turbine/sf-go-coral-springs-center-mike-birbiglia-012513-20130125")
demetri = Comedian.create(name:"Demetri Martin", age: 45, city:"New York", image_source: "https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/demetri_martin_800x600.jpg")
glover = Comedian.create(name:"Donald Glover", age: 35, city:"Atlanta", image_source: "https://m.media-amazon.com/images/M/MV5BNzUxNTU5ODkxNl5BMl5BanBnXkFtZTgwOTIyNjc5MDI@._V1_.jpg")
cho = Comedian.create(name:"Margaret Cho", age:50, city:"San Francisco", image_source: "https://timedotcom.files.wordpress.com/2015/09/margaret-cho-psycho.jpg")
haddish = Comedian.create(name:"Tiffany Haddish", age:39, city:"LA", image_source: "https://www.biography.com/.image/t_share/MTUzMzkzNjExMjk0MTIzMDg4/actress-tiffany-haddish-poses-for-a-portrait-during-the-nbcuniversal-press-day-at-the-langham-huntington-pasadena-on-january-13-2016-in-pasadena-california-photo-by-christopher-polk_nbc_nbcu-photo-ban.jpg")
black = Comedian.create(name:"Lewis Black", age:70, city:"Silver Spring", image_source: "https://lutherburbankcenter.org/wp-content/uploads/2017/01/Lewis-Black2.jpg")
mulaney = Comedian.create(name:"John Mulaney", age:36, city:"Chicago", image_source: "https://pbs.twimg.com/profile_images/1047636792839684096/epuMdIxu_400x400.jpg")

aziz.specials.create(name:"Buried Alive", image_source: "https://upload.wikimedia.org/wikipedia/en/thumb/9/94/Aziz_Ansari-Buried_Alive.jpg/220px-Aziz_Ansari-Buried_Alive.jpg", run_time: 190)
aziz.specials.create(name:"Live at Madison Square Garden", image_source: "http://exclaim.ca/images/Aziz.jpg", run_time: 111)
aziz.specials.create(name:"Intimate Moments for a Sensual Evening", image_source: "https://upload.wikimedia.org/wikipedia/en/thumb/5/5b/Intimate_Moments_for_a_Sensual_Evening_%28Aziz_Ansari_album_-_cover_art%29.jpg/220px-Intimate_Moments_for_a_Sensual_Evening_%28Aziz_Ansari_album_-_cover_art%29.jpg",  run_time: 188)
aziz.specials.create(name:"Dangerously Delicious", image_source: "https://upload.wikimedia.org/wikipedia/en/thumb/6/6c/Aziz_Ansari_-_Dangerously_Delicious.jpg/220px-Aziz_Ansari_-_Dangerously_Delicious.jpg",  run_time: 100)

ellen.specials.create(name:"Relatable", image_source: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/ellen-degeneres-relatable-lead-1545052589.jpg?crop=0.240xw:0.180xh;0.391xw,0.144xh&resize=1200:*",  run_time: 97)
ellen.specials.create(name:"Ellen DeGeneres: The Beginning", image_source: "https://m.media-amazon.com/images/M/MV5BODQxNzQzMDc4Nl5BMl5BanBnXkFtZTgwMTgwNjgwMzE@._V1_UY268_CR9,0,182,268_AL_.jpg",  run_time: 78)
ellen.specials.create(name:"Ellen DeGeneres: Here and Now", image_source: "https://images-na.ssl-images-amazon.com/images/I/71ubDkbhtSL._SX342_.jpg",  run_time: 56)

rock.specials.create(name:"Chris Rock: Bigger & Blacker", image_source: "https://images-na.ssl-images-amazon.com/images/I/91qn-yLfPnL._SY445_.jpg",  run_time: 61)
rock.specials.create(name:"Chris Rock: Never Scared", image_source: "https://images-na.ssl-images-amazon.com/images/I/61OElXVcnEL.jpg",  run_time: 48)
rock.specials.create(name:"Chris Rock: Kill the Messenger", image_source: "https://upload.wikimedia.org/wikipedia/en/thumb/5/59/Chris_Rock_Kill_the_Messenger_poster.jpg/250px-Chris_Rock_Kill_the_Messenger_poster.jpg",  run_time: 99)
rock.specials.create(name:"Chris Rock: Tamborine", image_source: "https://m.media-amazon.com/images/M/MV5BMGQ5NWJmMDktMDMxNS00ZWQzLWEzNjgtZWU5NjE0ZmZjYjc0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg",  run_time: 123)

silverman.specials.create(name:"Sarah Silverman: We Are Miracles", image_source: "https://images-na.ssl-images-amazon.com/images/I/61%2BMsBD82yL._SY445_.jpg",  run_time: 53)
silverman.specials.create(name:"Sarah Silverman: A Speck of Dust", image_source: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXGhMIB3Wp-l6N1AxjZlbXQxsWJyult6p1Osty127KJsf7MNHCFQ",  run_time: 61)

hgadsby.specials.create(name:"Nanette", image_source: "https://m.media-amazon.com/images/M/MV5BY2I3MThmYTctZTU4YS00YWNmLTg4YzktNDY0ZGE5MmQ3Y2Q3XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg",  run_time: 81)

tig.specials.create(name:"Tig Notaro: Boyish Girl Interrupted", image_source: "https://m.media-amazon.com/images/M/MV5BMjc4Mzc3MDQwOF5BMl5BanBnXkFtZTgwMTI4NzcwNzE@._V1_.jpg",  run_time: 101)
tig.specials.create(name:"Tig Notaro: Happy To Be Here", image_source: "https://m.media-amazon.com/images/M/MV5BNWQxMDgzYjAtZTZkOS00MWM2LWIxNTUtZTUwYmUxMWQ0NzM1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg",  run_time: 102)

wong.specials.create(name:"Ali Wong: Baby Cobra", image_source: "https://m.media-amazon.com/images/M/MV5BOWZmODIxMDEtZGY1My00OGEyLWE3NTQtN2Y4MTFkMzdlMTc4XkEyXkFqcGdeQXVyNjcwNDI1MDk@._V1_UY268_CR4,0,182,268_AL_.jpg",  run_time: 111)
wong.specials.create(name:"Ali Wong: Hard Knock Wife", image_source: "https://m.media-amazon.com/images/M/MV5BMWVkZDNjZTMtMTY0Yi00OGQ0LTliMDEtMWMxYzljYzZlYTY3XkEyXkFqcGdeQXVyMTEzNjA2NzM@._V1_UX182_CR0,0,182,268_AL_.jpg",  run_time: 52)

chappelle.specials.create(name:"Dave Chappelle: Killin' Them Softly", image_source: "https://i.ytimg.com/vi/FclScfPoKes/hqdefault.jpg",  run_time: 48)
chappelle.specials.create(name:"Dave Chappelle: For What It's Worth", image_source: "https://images-na.ssl-images-amazon.com/images/I/51BW0APWRHL._SY445_.jpg",  run_time: 190)
chappelle.specials.create(name:"Deep in the Heart of Texas: Dave Chappelle Live at Austin City Limits", image_source: "https://www.dvdplanetstore.pk/wp-content/uploads/2018/01/jaHuxnzJy616w4Muv2NxZgQ9fUu.jpg",  run_time: 99)
chappelle.specials.create(name:"Dave Chappelle: Equanimity", image_source: "https://occ-0-116-114.1.nflxso.net/art/a343b/1b58ae89bc584e001dbeb9687105711f66ca343b.jpg",  run_time: 83)
chappelle.specials.create(name:"Dave Chappelle: The Bird Revelation", image_source: "https://occ-0-116-114.1.nflxso.net/art/a343b/1b58ae89bc584e001dbeb9687105711f66ca343b.jpg",  run_time: 69)

mikeb.specials.create(name:"What I Should Have Said Was Nothing: Tales From My Secret Public Journal", image_source: "https://m.media-amazon.com/images/M/MV5BMTk0NzY2NzM5Ml5BMl5BanBnXkFtZTcwNjE2Mjg2MQ@@._V1_.jpg",  run_time: 77)
mikeb.specials.create(name:"My Girlfriend's Boyfriend", image_source: "https://occ-0-2433-448.1.nflxso.net/art/d2fdb/18bfa2645890e395c39e9a8722f3dd88893d2fdb.jpg",  run_time: 66)
mikeb.specials.create(name:"Thank God for Jokes", image_source: "https://m.media-amazon.com/images/M/MV5BMDkwN2EwNDItNTg5Ni00MzhjLWIzZjYtNWQ0ZDI4MDg1MWU0XkEyXkFqcGdeQXVyMzg0NjMxMDM@._V1_.jpg",  run_time: 108)

demetri.specials.create(name:"Live(At the Time)", image_source: "https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_.jpg",  run_time: 121)
demetri.specials.create(name:"Demetri Martin: The Overthinker", image_source: "https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_UY268_CR4,0,182,268_AL_.jpg",  run_time: 85)

glover.specials.create(name:"Donald Glover: Weirdo", image_source: "https://m.media-amazon.com/images/M/MV5BMTY0Mzk0NTI5N15BMl5BanBnXkFtZTgwODY0NDAxMzE@._V1_UY268_CR9,0,182,268_AL_.jpg",  run_time: 71)

cho.specials.create(name:"Margaret Cho: PsyCHO", image_source: "https://image-ticketfly.imgix.net/00/01/53/01/53-og.jpg?w=500&h=766",  run_time: 131)

haddish.specials.create(name:"Tiffany Haddish: She Ready! From the Hood to Hollywood", image_source: "https://www.sho.com/site/image-bin/images/0_0_3439345/0_0_3439345_00h_1280x640.jpg",  run_time: 40)

black.specials.create(name:"Lewis Black: Red, White & Screwed", image_source: "https://images-na.ssl-images-amazon.com/images/I/511B27JHNML._SY445_.jpg",  run_time: 43)
black.specials.create(name:"Black on Broadway", image_source: "https://m.media-amazon.com/images/M/MV5BMjI4ODM5MjQwMl5BMl5BanBnXkFtZTgwNDk2ODkwMzE@._V1_UY1200_CR135,0,630,1200_AL_.jpg",  run_time: 57)
black.specials.create(name:"In God We Rust", image_source: "https://i0.wp.com/thecomicscomic.com/wp-content/uploads/2012/10/Black-Rust-e1351448515587.jpg?fit=300%2C300",  run_time: 52)

mulaney.specials.create(name:"The Top Part", image_source: "https://images-na.ssl-images-amazon.com/images/I/71JArL5JC8L._SY355_.jpg",  run_time: 61)
mulaney.specials.create(name:"John Mulaney: Kid Gorgeous at Radio City", image_source: "https://www.cincinnatiarts.org/assets/img/John-Mulaney-1300x740-2-79c7ba8afb.jpg")
mulaney.specials.create(name:"	John Mulaney: The Comeback Kid", image_source: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg",  run_time: 55)
mulaney.specials.create(name:"John Mulaney: New in Town", image_source: "https://images-na.ssl-images-amazon.com/images/I/61Udd2R12LL._SY355_.jpg",  run_time: 61)
