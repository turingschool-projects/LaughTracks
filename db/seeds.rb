require "./app/models/comedian"

Comedian.destroy_all

bob_newhart = Comedian.create(
{firstname:"Bob",     lastname:"Newhart",   age:89, city:"Los Angeles"},
{firstname:"Adam",    lastname:"Burke",     age:51, city:"Chicago"},
{firstname:"Cameron", lastname:"Esposito",  age:38, city:"Los Angeles"},
{firstname:"Dave",    lastname:"Chappelle", age:45, city:"Washington D.C."},
{firstname:"Ellen",   lastname:"Degeneres", age:60, city:"Los Angeles"},
{firstname:"Hannah",  lastname:"Gadsby",    age:40, city:"Smithton"},
{firstname:"Hannibal",lastname:"Buress",    age:35, city:"Chicago"},
{firstname:"James",   lastname:"Adomian",   age:38, city:"New York"},
{firstname:"Maria",   lastname:"Bamford",   age:48, city:"Los Angeles"},
{firstname:"Pete",    lastname:"Holmes",    age:39, city:"Los Angeles"},
{firstname:"Steve",   lastname:"Martin",    age:73, city:"Los Angeles"},
{firstname:"Wanda",   lastname:"Sykes",     age:54, city:"Los Angeles"}
)

bob_newart.specials.create(
  {title: "The Button Down Mind of Bob Newhart", year: 1958, runtime: 67},
  {title: "The Very Funny Bob Newhart", year: 1960, runtime: 64},
  {title: "Bob Newhart Tells Long Jokes", year: 1959, runtime: 90}


)
