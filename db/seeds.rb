require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all

Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA")
Comedian.create(name: "Joe Rogan", age: 51, city: "Newark, NJ")
Comedian.create(name: "Gilbert Gottfried", age: 63, city: "Brooklyn, NY")
Comedian.create(name: "Jimmy Carr", age: 46, city: "London, England")
Comedian.create(name: "Doug Stanhope", age: 51, city: "Worcester, MA")
Comedian.create(name: "Bert Kreischer", age: 46, city: "Tampa, FL")
Comedian.create(name: "Janeane Garofalo", age: 54, city: "Newton, NJ")
Comedian.create(name: "George Carlin", age: 71, city: "Manhattan, NY")
Comedian.create(name: "Jerry Seinfeld", age: 64, city: "Brooklyn, NY")
Comedian.create(name: "Mitch Hedberg", age: 37, city:"Saint Paul, MN")
Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
Comedian.create(name: "Lewis Black", age: 70, city: "Washington, D.C.")

Special.create(name: "Oslo: Burning the Bridge to Nowhere")
Special.create(name: "Before Turning the Gun on Himself")
Special.create(name: "Beer Hall Putsch")
Special.create(name: "No Place Like Home")

Special.create(name: "On Location: George Carlin at USC")
Special.create(name: "George Carlin: Again!")
Special.create(name: "Carlin at Carnegie")
Special.create(name: "Carlin on Campus")
Special.create(name: "Playin' with Your Head")
Special.create(name: "What Am I Doing in New Jersey?")
Special.create(name: "Doin' It Again")
Special.create(name: "Jammin' in New York")
Special.create(name: "George Carlin: 40 Years of Comedy")
Special.create(name: "You Are All Diseased")
Special.create(name: "Complaints and Grievances")
Special.create(name: "Life Is Worth Losing")
Special.create(name: "It's Bad for Ya")
Special.create(name: "Live from the Belly of the Beast")
Special.create(name: "Joe Rogan: Live")
Special.create(name: "Shiny Happy Jihad")
Special.create(name: "Talking Monkeys in Space")
Special.create(name: "Live from the Tabernacle")
Special.create(name: "Rocky Mountain High")
Special.create(name: "Triggered")
Special.create(name: "Strange Times")

Special.create(name: "Night of Too Many Stars")
Special.create(name: "The Nasty Show Hosted by Artie Lange")
Special.create(name: "Comedy Central Roast of Roseanne")
Special.create(name: "Comedy Central Roast of Denis Leary")


Special.create(name: "Stand-Up Confidential")
Special.create(name: "I'm Telling You for the Last Time")
Special.create(name: "Jerry Before Seinfeld")

Special.create(name: "Walk Your Way Out")
Special.create(name: "I'm Sorry You Feel That Way")
Special.create(name: "You People Are All The Same")
Special.create(name: "Let It Go")
Special.create(name: "Why Do I Do This?")

Special.create(name: "Funny Business")
Special.create(name: "Laughing and Joking")
Special.create(name: "Being Funny")
Special.create(name: "Making People Laugh")

Special.create(name: "Bert Kreischer: Comfortably Dumb")
Special.create(name: "Bert Kreischer: The Machine")

Special.create(name: "Michael Bolton's Big, Sexy Valentine's Day Special")

Special.create(name: "Do You Believe in Gosh?")
Special.create(name: "Mitch All Together")
Special.create(name: "Strategic Grill Locations")

Special.create(name: "Black on Broadway")
Special.create(name: "A Pair of Lewis Black Shorts ")
Special.create(name: "In God We Rust")
Special.create(name: "Stark Raving Black")

Special.create(name: "Robin Williams: Live on Broadway ")
Special.create(name: "Robin Williams: An Evening at the Met")
Special.create(name: "Weapons of Self Destruction")
