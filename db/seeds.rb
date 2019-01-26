require_relative '../app/models/comedian.rb'
require_relative '../app/models/special.rb'


Comedian.destroy_all
Comedian.create(name: "Norm Macdonald", age: 59, born: "Quebec City, Quebec")
Comedian.create(name: "Dave Chappelle", age: 45, born: "Washington, District of Columbia")
Comedian.create(name: "Chris Rock", age: 53, born: "Andrews, South Carolina")
Comedian.create(name: "Kevin Hart", age: 39, born: "Philidelphia, Pensylvenia")
Comedian.create(name: "Jim gaffigan", age: 52, born: "Elgin, Illinois")
Comedian.create(name: "Bill Burr", age: 50, born: "Canton, Massachusetts")
Comedian.create(name: "Eddie Murphy", age: 57, born: "Brooklyn, New York")
Comedian.create(name: "Ellen DeGeneres", age: 60, born: "Metairie, Louisiana")
Comedian.create(name: "Louis C.K.", age: 51, born: "Washington, District of Columbia")
Comedian.create(name: "George Carlin", age: 71, born: "Manhattan, New York", deceased: true)
Comedian.create(name: "Mitch Hedberg", age: 37, born: "St. Paul, Minnisota", deceased: true)
Comedian.create(name: "Daniel Tosh", age: 43, born: "Boppad, Germany")

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
