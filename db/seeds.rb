require_relative '../app/models/comedian.rb'
require_relative '../app/models/special.rb'


Comedian.destroy_all
Comedian.create(name: "Norm Macdonald", age: 59, born: "Quebec City, Quebec", picture_url:"https://pixel.nymag.com/imgs/daily/vulture/2018/09/13/norm/13-norm-macdonald-1.w570.h712.jpg")
Comedian.create(name: "Dave Chappelle", age: 45, born: "Washington, District of Columbia", picture_url:"https://pixel.nymag.com/imgs/daily/vulture/2018/01/02/dave/02-dave-chappelle-7.w700.h700.jpg")
Comedian.create(name: "Chris Rock", age: 53, born: "Andrews, South Carolina", picture_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Chris_Rock_WE_2012_Shankbone.JPG/220px-Chris_Rock_WE_2012_Shankbone.JPG")
Comedian.create(name: "Kevin Hart", age: 39, born: "Philidelphia, Pensylvenia", picture_url:"https://pmcvariety.files.wordpress.com/2017/05/kevin-hart-variety-cover-story.jpg?w=1000")
Comedian.create(name: "Jim gaffigan", age: 52, born: "Elgin, Illinois", picture_url:"https://lutherburbankcenter.org/wp-content/uploads/2018/03/JimGaffigan_1000x1000.jpg")
Comedian.create(name: "Bill Burr", age: 50, born: "Canton, Massachusetts", picture_url:"https://image.masslive.com/home/mass-media/width600/img/entertainment/photo/nashville-comedy-festival-21d347107e975672.jpg")
Comedian.create(name: "Eddie Murphy", age: 57, born: "Brooklyn, New York", picture_url:"https://cdn1.thr.com/sites/default/files/imagecache/landscape_928x523/2016/08/eddie_murphy.jpg")
Comedian.create(name: "Ellen DeGeneres", age: 60, born: "Metairie, Louisiana", picture_url:"https://pmcvariety.files.wordpress.com/2018/10/ellen_degeneres.png")
Comedian.create(name: "Louis C.K.", age: 51, born: "Washington, District of Columbia", picture_url:"https://wwwcache.wral.com/asset/entertainment/2018/08/28/17802807/media-S097908874-300-DMID1-5hjtymu46-640x360.jpg")
Comedian.create(name: "George Carlin", age: 71, born: "Manhattan, New York", deceased: true, picture_url:"https://usercontent1.hubstatic.com/14000412_f520.jpg")
Comedian.create(name: "Mitch Hedberg", age: 37, born: "St. Paul, Minnisota", deceased: true, picture_url:"https://cdn1.thr.com/sites/default/files/imagecache/landscape_928x523/2018/06/gettyimages-74714565-h_2018.jpg")
Comedian.create(name: "Daniel Tosh", age: 43, born: "Boppad, Germany", picture_url:"http://www.wbwn.com/wp-content/uploads/sites/380/2017/02/Daniel-Tosh.png")

Special.destroy_all
Comedian.find_by(name: "Norm Macdonald").specials.create(name: "Ridiculous", length: 74, image_url: "https://images-na.ssl-images-amazon.com/images/I/518HnVqXmPL._SY355_.jpg")
Comedian.find_by(name: "Norm Macdonald").specials.create(name: "Me Doing Standup", length: 61, image_url: "https://scdn.nflximg.net/images/9409/3069409.jpg")
Comedian.find_by(name: "Norm Macdonald").specials.create(name: "Hitler's Dog, Gossip & Trickery", length: 71, image_url: "https://exclaim.ca/images/Norm_Macdonald.jpg")
Comedian.find_by(name: "Dave Chappelle").specials.create(name: "The Bird Revelation", length: 50, image_url: "https://i.pinimg.com/736x/9e/84/e0/9e84e06c1cb208cc676717478898f8a1.jpg")
Comedian.find_by(name: "Dave Chappelle").specials.create(name: "For WHat It's Worth", length: 72, image_url: "https://images-na.ssl-images-amazon.com/images/I/71hrYRcEEmL._RI_.jpgw")
Comedian.find_by(name: "Dave Chappelle").specials.create(name: "Killin' Them Softly", length: 65, image_url: "https://cps-static.rovicorp.com/2/Open/Millennium_Entertainment_730/Program/2542873/_2by3/_derived_jpg_q90_410x410_m0/2542873_DaveChappelleKillinThemSoftly_Poster.jpg?partner=allrovi.com")
Comedian.find_by(name: "Chris Rock").specials.create(name: "Born Suspect", length: 46, image_url: "https://images-na.ssl-images-amazon.com/images/I/51AN2RKKQSL.jpg")
Comedian.find_by(name: "Chris Rock").specials.create(name: "Roll With The New", length: 57, image_url: "https://direct.rhapsody.com/imageserver/images/Alb.58495367/500x500.jpg")
Comedian.find_by(name: "Chris Rock").specials.create(name: "Never Scared", length: 75, image_url: "https://images-na.ssl-images-amazon.com/images/I/61OElXVcnEL.jpg")
