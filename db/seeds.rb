require_relative '../app/models/comedian.rb'
require_relative '../app/models/special.rb'

seinfeld = Comedian.create(name: 'Jerry Seinfeld', age: 64, city: 'New York City')
schumer = Comedian.create(name: 'Amy Schumer', age: 37, city: 'New York City')
stewart = Comedian.create(name: 'Jon Stewart', age: 56, city: 'New York City')
# silverman = Comedian.create(name: 'Sarah Silverman', age: 48, city: 'Bedford')
# obrien = Comedian.create(name: "Conan O'Brien", age: 55, city: 'Brookline')
# degeneres = Comedian.create(name: 'Ellen DeGeneres', age: 60, city: 'Metairie')
# williams = Comedian.create(name: 'Robin Williams', age: 63, city: 'Paradise Cay')
# gervais = Comedian.create(name: 'Ricky Gervais', age: 57, city: 'Whitley')
# ansari = Comedian.create(name: 'Aziz Ansari', age: 35, city: 'Columbia')
# colbert = Comedian.create(name: 'Stephen Colbert', age: 54, city: 'Washington, D.C.')
# david = Comedian.create(name: 'Larry David', age: 71, city: 'New York City')
# fallon = Comedian.create(name: 'Jimmy Fallon', age: 44, city: 'New York City')
# fey = Comedian.create(name: 'Tina Fey', age: 48, city: 'Upper Darby')
# poehler = Comedian.create(name: 'Amy Poehler', age: 45, city: 'Canandaigua')
# wiig = Comedian.create(name: 'Kristen Wiig', age: 64, city: 'New York City')
# nanjiani = Comedian.create(name: 'Kumail Nanjiani', age: 40, city: 'Karachi')
# glover = Comedian.create(name: 'Donald Glover', age: 35, city: 'Edwards Air Force Base')
# carell = Comedian.create(name: 'Steve Carell', age: 56, city: 'Concord')

seinfeld.specials.create(name: "Jerry Seinfeld: Live On Broadway", run_time: 75)
schumer.specials.create(name: "Amy Schumer: Live at the Apollo", run_time: 61)
schumer.specials.create(name: "Amy Schumer: Mostly Sex Stuff", run_time: 60)
schumer.specials.create(name: "Amy Schumer: The Leather Special", run_time: 57)
stewart.specials.create(name: "Unleavened", run_time: 52)


# 
# williams.specials.create(name: "Robin Williams Live on Broadway", run_time: 305)
# williams.specials.create(name: "Weapons of Self Destruction", run_time: 125)
