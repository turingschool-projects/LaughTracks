require "./app/models/comedian"
require "./app/models/special"

Comedian.destroy_all
Special.destroy_all

comedian_1 = Comedian.create(name: "John Mulaney", age: 36, hometown: "Chicago, IL")
comedian_2 = Comedian.create(name: "Mitch Hedberg", age: 36, hometown: "Saint Paul, MN")
comedian_3 = Comedian.create(name: "Jim Gaffigan", age: 50, hometown: "Elgin, IL")
comedian_4 = Comedian.create(name: "Eddie Izzard", age: 56, hometown: "Colony of Aden, UK")
comedian_5 = Comedian.create(name: "Greg Proops", age: 59, hometown: "Phoenix, AZ")
comedian_6 = Comedian.create(name: "Colin Mochrie", age: 60, hometown: "Kilmarnok, Scotland")
comedian_7 = Comedian.create(name: "John Hodgman", age: 47, hometown: "Brookline, MA")
comedian_8 = Comedian.create(name: "Anjelah Johnson", age: 36, hometown: "San Jose, CA")
comedian_9 = Comedian.create(name: "Mike Birbiglia", age: 40, hometown: "Shrewsbury, MA")
comedian_10 = Comedian.create(name: "Aziz Ansari", age: 35, hometown: "Columbia, SC")
comedian_11 = Comedian.create(name: "Alex Wong", age: 36, hometown: "San Francisco, CA")
comedian_12 = Comedian.create(name: "Brian Reagan", age: 60, hometown: "Miami, FL")

comedian_1.specials.create(title: "Kid Gorgeous", runtime: 65)
comedian_2.specials.create(title: "Comedy Central Presents: Mitch Hedberg", runtime: 30)
comedian_3.specials.create(title: "Cinco", runtime: 73)
comedian_4.specials.create(title: "Eddie Izzard Live at Madison Square Garden", runtime: 86)
comedian_5.specials.create(title: "Live at Musso and Frank Grill", runtime: 60)
comedian_6.specials.create(title: "Not Made Up Special Name", runtime: 6)
comedian_7.specials.create(title: "Ragnarok", runtime: 67)
comedian_8.specials.create(title: "Not Fancy", runtime: 90)
comedian_9.specials.create(title: "Thank God For Jokes", runtime: 70)
comedian_10.specials.create(title: "Buried Alive", runtime: 80)
comedian_11.specials.create(title: "Hardknock Wife", runtime: 64)
comedian_12.specials.create(title: "Brian Reagan", runtime: 60)
