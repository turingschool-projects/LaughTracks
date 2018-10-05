require './app/models/special.rb'
require './app/models/comedian.rb'

freshmeat = Comedian.create(name: 'Louis CK', birthdate: (Date.parse('1/1/1967')).jd, city: 'Washington, DC')
Special.create(name: 'Louis CK',
  release_date: Date.parse('1/1/2017'), runtime_length: 88, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Oh My God',
  release_date: Date.parse('1/1/2013'), runtime_length: 94, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Word: Live at Carnegie Hall',
  release_date: Date.parse('1/1/2012'), runtime_length: 98, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Hilarious',
  release_date: Date.parse('1/1/2011'), runtime_length: 102, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'Bill Burr', birthdate: (Date.parse('1/1/1968')).jd, city: 'Canton, MA')
Special.create(name: 'Walk Your Way Out',
  release_date: Date.parse('1/1/2017'), runtime_length: 111, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Im Sorry You Feel That Way',
  release_date: Date.parse('1/1/2017'), runtime_length: 108, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Let It Go',
  release_date: Date.parse('1/1/2017'), runtime_length: 102, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Why Do I Do This?',
  release_date: Date.parse('1/1/2017'), runtime_length: 112, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'Jim Gaffigan', birthdate: (Date.parse('1/1/1968')).jd, city: 'Elgin, IL')
Special.create(name: 'Mr. Universe',
  release_date: Date.parse('1/1/2017'), runtime_length: 101, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'King Baby',
  release_date: Date.parse('1/1/2017'), runtime_length: 107, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Beyond The Pale',
  release_date: Date.parse('1/1/2017'), runtime_length: 112, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Doing My Time',
  release_date: Date.parse('1/1/2017'), runtime_length: 117, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'Mitch Hedberg', birthdate: (Date.parse('1/1/1968')).jd, city: 'St. Paul, MN')
Special.create(name: 'Do You Believe in Gosh?',
  release_date: Date.parse('1/1/2017'), runtime_length: 114, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Mitch Altogether',
  release_date: Date.parse('1/1/2017'), runtime_length: 79, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Strategic Grill Locations',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'Russel Peters', birthdate: (Date.parse('1/1/1968')).jd, city: 'Toronto, Canada')
Special.create(name: 'Almost Famous',
  release_date: Date.parse('1/1/2017'), runtime_length: 99, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Notorious',
  release_date: Date.parse('1/1/2017'), runtime_length: 93, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'The Green Card Tour: Live from the O2 Arena',
  release_date: Date.parse('1/1/2017'), runtime_length: 95, comedian_id: 5,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Red, White and Brown',
  release_date: Date.parse('1/1/2017'), runtime_length: 97, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'Jerry Seinfield', birthdate: (Date.parse('1/1/1968')).jd, city: 'Brooklyn, NY')
Special.create(name: 'Jerry Before Seinfeld',
  release_date: Date.parse('1/1/2017'), runtime_length: 61, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Im Telling You for the Last Time',
  release_date: Date.parse('1/1/2017'), runtime_length: 88, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'George Carlin', birthdate: (Date.parse('1/1/1968')).jd, city: 'Santa Monica, CA')
Special.create(name: 'I Kinda Like It When a Lotta People Die',
  release_date: Date.parse('1/1/2017'), runtime_length: 78, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Life Is Worth Losing',
  release_date: Date.parse('1/1/2017'), runtime_length: 88, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Carlin on Campus',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'Dave Chapelle', birthdate: (Date.parse('1/1/1968')).jd, city: 'Washington, DC')
Special.create(name: 'Dave Chappelle: The Bird Revelation',
  release_date: Date.parse('1/1/2017'), runtime_length: 92, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Deep in the Heart of Texas: Dave Chappelle Live at Austin City Limits',
  release_date: Date.parse('1/1/2017'), runtime_length: 92, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'Patton Oswalt', birthdate: (Date.parse('1/1/1968')).jd, city: 'Portsmouth, VA')
Special.create(name: 'The Secret Life of Pets 2',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Kim Possible',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Sex Madness Revealed',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'Kathy Griffin', birthdate: (Date.parse('1/1/1968')).jd, city: 'Oak Park, IL')
Special.create(name: 'Grannie',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Hall Pass',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'Ellen DeGeneres', birthdate: (Date.parse('1/1/1968')).jd, city: 'Metairie, LA')
Special.create(name: 'Ellen DeGeneres: Here and Now',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Ellen DeGeneres: The Beginning',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'Amy Schumer', birthdate: (Date.parse('1/1/1968')).jd, city: 'New York, NY')
Special.create(name: 'Amy Schumer: The Leather Special',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Amy Schumer: Live at the Apollo',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'Amy Schumer: Mostly Sex Stuff',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

freshmeat = Comedian.create(name: 'Maria Bamford', birthdate: (Date.parse('1/1/1968')).jd, city: 'Port Heuneme, CA')
Special.create(name: 'Seven Stages to Achieve Eternal Bliss By Passing Through the Gateway Chosen By the Holy Storsh',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
Special.create(name: 'A Day in the Life of a Female Comedian',
  release_date: Date.parse('1/1/2017'), runtime_length: 89, comedian_id: freshmeat.id,
  image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
