require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

#creates comedians to populate db
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

#lines below associates a comedian with all of the specials they have been in 
Comedian.find_by(name: "Doug Stanhope").specials.create(
  [
    {name: "Oslo: Burning the Bridge to Nowhere"},
    {name: "Before Turning the Gun on Himself"},
    {name: "Beer Hall Putsch"},
    {name: "No Place Like Home"}
])

Comedian.find_by(name: "George Carlin").specials.create(
  [
    {name: "On Location: George Carlin at USC"},
    {name: "George Carlin: Again!"},
    {name: "Carlin at Carnegie"},
    {name: "Carlin on Campus"},
    {name: "Playin' with Your Head"},
    {name: "What Am I Doing in New Jersey?"},
    {name: "Doin' It Again"},
    {name: "Jammin' in New York"},
    {name: "George Carlin: 40 Years of Comedy"},
    {name: "You Are All Diseased"},
    {name: "Complaints and Grievances"},
    {name: "Life Is Worth Losing"},
    {name: "It's Bad for Ya"},
    {name: "Live from the Belly of the Beast"},
    {name: "Joe Rogan: Live"},
    {name: "Shiny Happy Jihad"},
    {name: "Talking Monkeys in Space"},
    {name: "Live from the Tabernacle"},
    {name: "Rocky Mountain High"},
    {name: "Triggered"},
    {name: "Strange Times"}
])

Comedian.find_by(name: "Gilbert Gottfried").specials.create(
  [
    {name: "Night of Too Many Stars"},
    {name: "The Nasty Show Hosted by Artie Lange"},
    {name: "Comedy Central Roast of Roseanne"},
    {name: "Comedy Central Roast of Denis Leary"}
])

Comedian.find_by(name: "Jerry Seinfeld").specials.create(
[
  {name: "Stand-Up Confidential"},
  {name: "I'm Telling You for the Last Time"},
  {name: "Jerry Before Seinfeld"}
])

Comedian.find_by(name: "Bill Burr").specials.create(
[
  {name: "Walk Your Way Out"},
  {name: "I'm Sorry You Feel That Way"},
  {name: "You People Are All The Same"},
  {name: "Let It Go"},
  {name: "Why Do I Do This?"}
])

Comedian.find_by(name: "Jimmy Carr").specials.create(
  [
    {name: "Funny Business"},
    {name: "Laughing and Joking"},
    {name: "Being Funny"},
    {name: "Making People Laugh"}
])

Comedian.find_by(name: "Bert Kreischer").specials.create(
[
  {name: "Bert Kreischer: Comfortably Dumb"},
  {name: "Bert Kreischer: The Machine"}
])

Comedian.find_by(name: "Janeane Garofalo").specials.create(
[
  {name: "Michael Bolton's Big, Sexy Valentine's Day Special"}
])

Comedian.find_by(name: "Mitch Hedberg").specials.create(
[
  {name: "Do You Believe in Gosh?"},
  {name: "Mitch All Together"},
  {name: "Strategic Grill Locations"}
])

Comedian.find_by(name: "Lewis Black").specials.create(
[
  {name: "Black on Broadway"},
  {name: "A Pair of Lewis Black Shorts "},
  {name: "In God We Rust"},
  {name: "Stark Raving Black"}
])

Comedian.find_by(name: "Robin Williams").specials.create(
[
  {name: "Robin Williams: Live on Broadway"},
  {name: "Robin Williams: An Evening at the Met"},
  {name: "Weapons of Self Destruction"}
])
