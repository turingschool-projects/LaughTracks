require './app/models/comedian'

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

comedians.each do |t|
  Comedian.create(t)
end
