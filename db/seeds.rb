require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Specials.destroy_all

comedians = [
  { name: 'John Mulaney', age: 36, city: 'Chicago' },
  { name: 'Bill Burr', age: 50, city: 'Canton' },
  { name: 'Nathan Fielder', age: 35, city: 'Vancouver' },
  { name: 'Brian Regan', age: 60, city: 'Miami' },
  { name: 'Anthony Jeselnik', age: 40, city: 'Pittsburgh' },
  { name: 'Mitch Hedberg', age: 37, city: 'Saint Paul' },
  { name: 'Mike Birbiglia', age: 40, city: 'Shrewsbury' },
  { name: 'Dave Chapelle', age: 45, city: 'Washington, D.C.' },
  { name: 'Hannibal Burress', age: 35, city: 'Chicago' },
  { name: 'Norm Macdonald', age: 59, city: 'Quebec City' },
  { name: 'Bo Burnham', age: 28, city: 'Hamilton' },
  { name: 'Demetri Martin', age: 45, city: 'New York City' }
]

specials = [
  { title: 'John Mulaney: New in Town', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg', comedian_id: 1  },
  { title: 'John Mulaney: The Comeback Kid', run_time: 62, image_url: 'https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg', comedian_id: 1  },
  { title: "Bill Burr: I'm Sorry You Feel That Way", run_time: 80, image_url: 'https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg', comedian_id: 2  },
  { title: 'Bill Burr: Walk Your Way Out', run_time: 77, image_url: 'https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_UY268_CR10,0,182,268_AL_.jpg', comedian_id: 2  },
  { title: "Comedy Central's All-Star Non-Denominational Christmas Special", run_time: 60, image_url: 'https://images-na.ssl-images-amazon.com/images/I/91C4wD7hRxL._RI_SX380_.jpg', comedian_id: 3  },
  { title: 'Love and Cameras in America', run_time: 93, image_url: 'https://m.media-amazon.com/images/M/MV5BNzIyNjQzMTIxN15BMl5BanBnXkFtZTgwMzUxMTIwNzE@._V1_.jpg', comedian_id: 3  },
  { title: 'Brian Regan: The Epitome of Hyperbole', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BMTc1MjcxMTY0Ml5BMl5BanBnXkFtZTgwMjk3MjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg', comedian_id: 4  },
  { title: 'Brian Regan: Live from Radio City Music Hall', run_time: 57, image_url: 'https://m.media-amazon.com/images/M/MV5BMTcyNTgzNjU5NF5BMl5BanBnXkFtZTgwNzcwMTIwOTE@._V1_UY268_CR9,0,182,268_AL_.jpg', comedian_id: 4  },
  { title: 'Anthony Jeselnik: Caligula', run_time: 59, image_url: 'https://m.media-amazon.com/images/M/MV5BYWExMjQ2NGQtNWYxMS00YTA4LTk1ZjYtN2RlMWI1M2ViZWQ0XkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_UY268_CR5,0,182,268_AL_.jpg', comedian_id: 5  },
  { title: 'Anthony Jeselnik: Thoughts and Prayers', run_time: 59, image_url: 'https://m.media-amazon.com/images/M/MV5BYzA1ZGI0ZDYtYWVkNi00ZWY3LWE5MzUtZWIwZmI0NTRhNmJiXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg', comedian_id: 5  },
  { title: 'Strategic Grill Locations', run_time: 53, image_url: 'https://upload.wikimedia.org/wikipedia/en/4/44/Strategic_Grill_Locations.jpg', comedian_id: 6  },
  { title: 'Mitch All Together', run_time: 39, image_url: 'https://upload.wikimedia.org/wikipedia/en/d/d2/Mitch_All_Together_Album_Cover.JPG', comedian_id: 6  },
  { title: 'Mike Birbiglia: What I Should Have Said Was Nothing', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BMTk0NzY2NzM5Ml5BMl5BanBnXkFtZTcwNjE2Mjg2MQ@@._V1_UY268_CR3,0,182,268_AL_.jpg', comedian_id: 7  },
  { title: "Mike Birbiglia: My Girlfriend's Boyfriend", run_time: 76, image_url: 'https://m.media-amazon.com/images/M/MV5BMTU0OTMzNDUyNV5BMl5BanBnXkFtZTgwMDYxNjkyMjE@._V1_UY268_CR4,0,182,268_AL_.jpg', comedian_id: 7  },
  { title: 'Dave Chappelle: Equanimity', run_time: 64, image_url: 'https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg', comedian_id: 8  },
  { title: 'Deep in the Heart of Texas: Dave Chappelle Live at Austin City Limits ', run_time: 66, image_url: 'https://m.media-amazon.com/images/M/MV5BODA1MDE3ZWYtMTliYi00YTc5LTk3MjQtZjY2YTlhMDQ3Y2Y3XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_UY268_CR4,0,182,268_AL_.jpg', comedian_id: 8  },
  { title: 'Hannibal Buress: Live from Chicago', run_time: 67, image_url: 'https://m.media-amazon.com/images/M/MV5BZGJhNmQ3M2UtNDc1Ny00YjllLTkyYjYtZmE5NjU2ZjE1ZTYyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg', comedian_id: 9  },
  { title: 'Hannibal Buress: Comedy Camisado', run_time: 83, image_url: 'https://m.media-amazon.com/images/M/MV5BNDQ0ZDA3NTQtNzI3NC00Y2NiLWI0ZTctN2RjNDYxNWEyODY4XkEyXkFqcGdeQXVyNTQwMDk4NDM@._V1_UX182_CR0,0,182,268_AL_.jpg', comedian_id: 9  },
  { title: "Norm Macdonald: Hitler's Dog, Gossip & Trickery", run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BNTBkMGY1NDQtMDMxOS00ZjMwLTllZTUtMjEzMmE5OWU3NjU2XkEyXkFqcGdeQXVyMjMxMjQwMzM@._V1_UY268_CR4,0,182,268_AL_.jpg', comedian_id: 10  },
  { title: 'Norm Macdonald: Me Doing Standup', run_time: 61, image_url: 'https://m.media-amazon.com/images/M/MV5BMTYzNjY1NTcxN15BMl5BanBnXkFtZTgwNjgwNjA2MDE@._V1_UY268_CR1,0,182,268_AL_.jpg', comedian_id: 10  },
  { title: 'Bo Burnham: what.', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BZWI1YmY1YjctNTU3MS00MDFhLTkzNjUtMDgyYTEwYTkxZWJhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg', comedian_id: 11  },
  { title: 'Bo Burnham: Make Happy', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BZjg0YmNiZTAtZDI2Yi00MTVhLTk3ZTctM2JiNjQwY2ZhMzg4XkEyXkFqcGdeQXVyMzE1NjI3MjI@._V1_UX182_CR0,0,182,268_AL_.jpg', comedian_id: 11  },
  { title: 'Demetri Martin: The Overthinker', run_time: 56, image_url: 'https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_UY268_CR4,0,182,268_AL_.jpg', comedian_id: 12  },
  { title: 'Demetri Martin: Live (At the Time)', run_time: 61, image_url: 'https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_UX182_CR0,0,182,268_AL_.jpg', comedian_id: 12  }
]

comedians.each do |t|
  Comedian.create(t)
end

specials.each do |t|
  Special.create(t)
end
