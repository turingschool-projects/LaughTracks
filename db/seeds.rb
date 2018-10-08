require File.expand_path('../../config/environment.rb', __FILE__)

comedian = Comedian.create(name: "Tom Segura", age: 39, city: "Cincinnati")

special_1 = Special.create(comedian_id: comedian.id, name:"Completely Normal", runtime: 60, thumbnail: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiZ5r-16PbdAhWCn4MKHWxMA0oQjRx6BAgBEAU&url=https%3A%2F%2Fflixable.com%2Ftitle%2F70301023%2F&psig=AOvVaw2WEwc3C0qZc4oMRQsEQ-xQ&ust=1539087099060135"
special_2 = Special.create(comedian_id: comedian.id, name:"Mostly Stories",runtime: 60, thumbnail: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwigjJrN6PbdAhUs04MKHRw2BQ4QjRx6BAgBEAU&url=https%3A%2F%2Fwww.amazon.com%2FMostly-Stories-Tom-Segura%2Fdp%2FB06XTZ4WTN&psig=AOvVaw2nZq5EkG2Ikkxu65KwIgmv&ust=1539087158920359"
special_3 = Special.create(comedian_id: comedian.id, name:"Disgraceful", runtime: 60, thumbnail: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwj8jsfY6PbdAhVF34MKHV6vBvMQjRx6BAgBEAU&url=https%3A%2F%2Fwww.amazon.com%2FDisgraceful-Tom-Segura%2Fdp%2FB07FLGS6SL&psig=AOvVaw3WPUhDLS26z9-zhzIj0PV6&ust=1539087181943543"
puts "Created #{comedian.name}"

comedian = Comedian.create(name: "Kevin Hart", age: 49, city: "Philadelphia")

special_1 = Special.create(comedian_id: comedian.id, name:"What Now?", runtime: 60, thumbnail: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwj69Jvn6PbdAhVr6oMKHUY1AIoQjRx6BAgBEAU&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt4669186%2Fmediaviewer%2Frm1385693952&psig=AOvVaw0xG8JiyeKq4UUbULc_wDaN&ust=1539087207434611"
special_2 = Special.create(comedian_id: comedian.id, name:"Seriously Funny",runtime: 60, thumbnail: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiFzs3w6PbdAhVozIMKHYJIBpYQjRx6BAgBEAU&url=https%3A%2F%2Fwww.amazon.com%2FSeriously-Funny-Kevin-Hart%2Fdp%2FB003ODL08G&psig=AOvVaw3osOja4qOVhQSi9Txftf_K&ust=1539087232777756"
special_3 = Special.create(comedian_id: comedian.id, name:"Let me Explain", runtime: 60, thumbnail: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjAs4r86PbdAhUm5YMKHazADEAQjRx6BAgBEAU&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FKevin_Hart%3A_Let_Me_Explain&psig=AOvVaw2n2rsQED9piuBfLT6_MTb-&ust=1539087255788890"
puts "Created #{comedian.name}"

comedian = Comedian.create(name: "Dave Chapelle", age: 45, city: "Washington D.C")

special_1 = Special.create(comedian_id: comedian.id, name:"Dave Chappelle: Equanimity", runtime: 60, thumbnail: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwisspKM6fbdAhWI6YMKHeBQDfsQjRx6BAgBEAU&url=https%3A%2F%2Fletterboxd.com%2Ffilm%2Fdave-chappelle-equanimity%2Fgenres%2F&psig=AOvVaw04Z__mrCmTvaST-VZoj3mR&ust=1539087284604831"
special_2 = Special.create(comedian_id: comedian.id, name:"Dave Chappelle: The Bird Revelation", runtime: 60, thumbnail: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwigofiZ6fbdAhVk_IMKHQjIAa0QjRx6BAgBEAU&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt7807000%2F&psig=AOvVaw16vlwz_jHo-8ujL-p6f488&ust=1539087315660357"
puts "Created #{comedian.name}"
