require_relative '../app/models/comedian.rb'

Comedian.destroy_all
Comedian.create(name: "Norm Macdonald", age: 59, born: "Quebec City, Quebec")
Comedian.create(name: "Dave Chappelle", age: 45, born: "Washington, District of Columbia")
Comedian.create(name: "Chris Rock", age: 53, born: "Andrews, South Carolina")
Comedian.create(name: "Kevin Hart", age: 39, born: "Philidelphia, Pensylvenia")
Comedian.create(name: "Jim gaffigan", age: 52, born: "elgin, Illinois")
Comedian.create(name: "Bill Burr", age: 50, born: "Canton, Massachusetts")
Comedian.create(name: "Eddie Murphy", age: 57, born: "Brooklyn, New York")
Comedian.create(name: "Ellen DeGeneres", age: 60, born: "Metairie, Louisiana")
Comedian.create(name: "Louis C.K.", age: 51, born: "Washington, District of Columbia")
Comedian.create(name: "George Carlin", age: 71, born: "Manhattan, New York", deceased: true)
Comedian.create(name: "Mitch Hedberg", age: 37, born: "St. Paul, Minnisota", deceased: true)
Comedian.create(name: "Daniel Tosh", age: 43, born: "Boppad, Germany")
