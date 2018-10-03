require_relative '../app/models/comedian'
require_relative '../app/models/special'

rob = Comedian.create(name: "Rob Dyrdek", age: 44, city: "Kettering")
Special.create(name: "Rob and Big", comedian_id: rob.id)
Special.create(name: "Fantasy Factory", comedian_id: rob.id)

nikki = Comedian.create(name: "Nikki Glaser", age: 34, city: "Cincinnati")
Special.create(name: "I Am Comic", comedian_id: nikki.id)
Special.create(name: "Red Eye", comedian_id: nikki.id)

iliza = Comedian.create(name: "Iliza Shlesinger", age: 35, city: "New York City")
Special.create(name: "Confirmed Kills", comedian_id: iliza.id)
Special.create(name: "Elder Millennial", comedian_id: iliza.id)

eddie = Comedian.create(name: "Eddie Murphy", age: 57, city: "Brooklyn")
Special.create(name: "Delirious", comedian_id: eddie.id)
Special.create(name: "Raw", comedian_id: eddie.id)

chris = Comedian.create(name: "Chris Rock", age: 53, city: "Andrews")
Special.create(name: "Bring The Pain", comedian_id: chris.id)
Special.create(name: "Never Scared", comedian_id: chris.id)

dave = Comedian.create(name: "Dave Chappelle", age: 45, city: "DC")
Special.create(name: "For What Its Worth", comedian_id: dave.id)
Special.create(name: "The Bird Revelation", comedian_id: dave.id)

rogen = Comedian.create(name: "Seth Rogen", age: 36, city: "Vancouver")
Special.create(name: "Seth Does Stand Up", comedian_id: rogen.id)
Special.create(name: "Comedy Benefit", comedian_id: rogen.id)

seth = Comedian.create(name: "Seth McFarlane", age: 44, city: "Kent")
Special.create(name: "Life Of Larry", comedian_id: seth.id)
Special.create(name: "Golden Globes", comedian_id: seth.id)

danny = Comedian.create(name: "Danny DeVito", age: 73, city: "Neptune")
Special.create(name: "Taxi", comedian_id: danny.id)
Special.create(name: "Always Sunny", comedian_id: danny.id)

dana = Comedian.create(name: "Dana Carvey", age: 63, city: "Missoula")
Special.create(name: "Squatting Monkeys Tell No Lies", comedian_id: dana.id)
Special.create(name: "Straight White Male", comedian_id: dana.id)

mike = Comedian.create(name: "Mike Myers", age: 55, city: "Scarborough")
Special.create(name: "Austin Powers", comedian_id: mike.id)
Special.create(name: "Shrek", comedian_id: mike.id)

kate = Comedian.create(name: "Kate Micucci", age: 38, city: "Jersey City")
Special.create(name: "Trying To Be Special", comedian_id: kate.id)
Special.create(name: "Garfunkel and Oates", comedian_id: kate.id)
