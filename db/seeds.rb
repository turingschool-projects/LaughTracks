require './app/models/comedian'
require './app/models/special'

Special.destroy_all
Comedian.destroy_all

adam = Comedian.create(name: "Adam Cayton-Holland", age: 38, city: "Denver")
fred = Comedian.create(name: "Fred Armisen", age: 51, city: "Los Angeles")
john = Comedian.create(name: "John Mulaney", age: 36, city: "New York City")
ellen = Comedian.create(name: "Ellen DeGeneres", age: 60, city: "New York City")
mike = Comedian.create(name: "Mike Birbiglia", age: 40, city: "New York City")
steve = Comedian.create(name: "Steve Martin", age: 73, city: "Los Angeles")
demetri = Comedian.create(name: "Demetri Martin", age: 45 , city: "Santa Monica")
trevor = Comedian.create(name: "Trevor Noah", age: 34 , city: "New York City")
maria = Comedian.create(name: "Maria Bamford", age: 48, city: "Los Angeles")
jerry = Comedian.create(name: "Jerry Seinfeld", age: 64, city: "New York")
michelle = Comedian.create(name: "Michelle Wolf", age: 33, city: "New York City")
ali = Comedian.create(name: "Ali Wong", age: 36, city: "Los Angeles")

adam.specials.create(name: "Comedy Central Stand-up Presents: Adam Cayton-Holland ", length: 30)

fred.specials.create(name: "Standup For Drummers", length: 62)

john.specials.create(name: "The Comeback Kid ", length: 62)
john.specials.create(name: "New in Town ", length: 60)
john.specials.create(name: "Kid Gorgeous at Radio City ", length: 65)

ellen.specials.create(name: "The Beginning", length: 65)
ellen.specials.create(name: "Here and Now", length: 60)

mike.specials.create(name: "What I Should Have Said Was Nothing: Tales From My Secret Public Jornal", length: 60)
mike.specials.create(name: "My Girlfriend's Boyfriend", length: 66)
mike.specials.create(name: "Thank God for Jokes", length: 70)

steve.specials.create(name: "Steve Martin-Live!", length: 60)
steve.specials.create(name: "A Wild and Crazy Guy", length: 60)
steve.specials.create(name: "Comedy is Not Pretty", length: 60)
steve.specials.create(name: "All Commericals", length: 60)
steve.specials.create(name: "Best Show Ever", length: 60)

demetri.specials.create(name: "At the Time", length: 60)
demetri.specials.create(name: "The Overthinker", length: 56)
demetri.specials.create(name: "Standup Comedian", length: 60)
demetri.specials.create(name: "Demetri Martin. Person.", length: 42)
demetri.specials.create(name: "If I.", length: 50)

trevor.specials.create(name: "African American", length: 69)
trevor.specials.create(name: "Afraid of the Dark", length: 67)
trevor.specials.create(name: "Lost in Translation", length: 62)
trevor.specials.create(name: "Pay Back the Funny", length: 84)
trevor.specials.create(name: "Son of Patricia", length: 63)

maria.specials.create(name: "Old Baby", length: 64)
maria.specials.create(name: "The Special Special Special!", length: 49)

jerry.specials.create(name: "I'm Telling You for the Last Time", length: 75)
jerry.specials.create(name: "Stand-Up Confidential", length: 55)

michelle.specials.create(name: "Nice Lady", length: 58)

ali.specials.create(name: "Baby Cobra", length: 60)
ali.specials.create(name: "Hard Knock Wife", length: 64)
