require "./app/models/comedian"

Comedian.destroy_all

Comedian.create(firstname:"Bob", lastname:"Newhart", age:89, city:"Los Angeles")
Comedian.create(firstname:"Adam", lastname:"Burke", age:51, city:"Chicago")
Comedian.create(firstname:"Cameron", lastname:"Esposito", age:38, city:"Los Angeles")
Comedian.create(firstname:"Dave", lastname:"Chappelle", age:45, city:"Washington D.C.")
Comedian.create(firstname:"Ellen", lastname:"Degeneres", age:60, city:"Los Angeles")
Comedian.create(firstname:"Hannah", lastname:"Gadsby", age:40, city:"Smithton")
Comedian.create(firstname:"Hannibal", lastname:"Buress", age:35, city:"Chicago")
Comedian.create(firstname:"James", lastname:"Adomian", age:38, city:"New York")
Comedian.create(firstname:"Maria", lastname:"Bamford", age:48, city:"Los Angeles")
Comedian.create(firstname:"Pete", lastname:"Holmes", age:39, city:"Los Angeles")
Comedian.create(firstname:"Steve", lastname:"Martin", age:73, city:"Los Angeles")
Comedian.create(firstname:"Wanda", lastname:"Sykes", age:54, city:"Los Angeles")
