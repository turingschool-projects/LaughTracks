require "./app/models/comedian"
require "./app/models/special"

Comedian.destroy_all
Special.destroy_all

Comedian.create([
{firstname:"Bob",     lastname:"Newhart",   age:89, city:"Los Angeles"},
{firstname:"Cameron", lastname:"Esposito",  age:38, city:"Los Angeles"},
{firstname:"Dave",    lastname:"Chappelle", age:45, city:"Washington D.C."},
{firstname:"Ellen",   lastname:"Degeneres", age:60, city:"Los Angeles"},
{firstname:"Hannah",  lastname:"Gadsby",    age:40, city:"Smithton"},
{firstname:"Hannibal",lastname:"Buress",    age:35, city:"Chicago"},
{firstname:"James",   lastname:"Adomian",   age:38, city:"New York"},
{firstname:"Maria",   lastname:"Bamford",   age:48, city:"Los Angeles"},
{firstname:"Pete",    lastname:"Holmes",    age:39, city:"Los Angeles"},
{firstname:"Steve",   lastname:"Martin",    age:73, city:"Los Angeles"},
{firstname:"Wanda",   lastname:"Sykes",     age:54, city:"Los Angeles"},
{firstname:"Adam",    lastname:"Burke",     age:51, city:"Chicago"}

]
)

Comedian.find_by(firstname: "Bob").specials.create(
  [
  {title: "The Button Down Mind of Bob Newhart", year: 1958, runtime: 67, image_path: "images/comedians/bob_newhart/button.jpg"},
  {title: "The Very Funny Bob Newhart", year: 1960, runtime: 64, image_path: "images/comedians/bob_newhart/funny.jpg"}
]
)

Comedian.find_by(lastname: "Esposito").specials.create(
  [
  {title: "Same Sex Symbol", year: 2015, runtime: 70, image_path: "images/comedians/cameron_esposito/same.jpg"},
  {title: "Marriage Material", year: 2016, runtime: 73, image_path: "images/comedians/cameron_esposito/marriage.jpg"}
]
)

Comedian.find_by(lastname: "Chappelle").specials.create(
  [
  {title: "Equanimity", year: 2017, runtime: 80, image_path: "images/comedians/dave_chappelle/equanimity.jpg"},
  {title: "For what it's worth", year: 2010, runtime: 73, image_path: "images/comedians/dave_chappelle/worth.jpg"},
  {title: "For what it's worth", year: 2016, runtime: 78, image_path: "images/comedians/dave_chappelle/soft.jpg"}
]
)
