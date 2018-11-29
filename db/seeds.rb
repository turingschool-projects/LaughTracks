require './config/environment.rb'

# Comedian.create(name: '', age: 0, city: '')
# Special.create(name: '', runtime: 0, comedian_id: 0, thumbnail: '')

#Jim Jefferies
jim_jefferies = Comedian.create(name: 'Jim Jefferies', age: 41, city: 'Sydney, Australia')
Special.create(name: 'Bare', runtime: 76, comedian_id: jim_jefferies.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BMmRlNDE0ZDctZTMwYi00MWQ2LTk2MzctNjdjODM0YWY1MjNmXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UX182_CR0,0,182,268_AL_.jpg')
Special.create(name: 'Freedumb', runtime: 86, comedian_id: jim_jefferies.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BYmZkZDFlMzAtNjQ5MS00NDE4LWEwMjktYTRmOTc3Mjc2NjI0XkEyXkFqcGdeQXVyMjQ4MzkyMjE@._V1_UX182_CR0,0,182,268_AL_.jpg')
Special.create(name: 'This Is Me Now', runtime: 70, comedian_id: jim_jefferies.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BMzAxZDNlMmEtYjk2Ny00YzRjLTkwOTQtMDNkYmExMDZhNGNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg')

#Aziz Ansari
aziz_ansari = Comedian.create(name: 'Aziz Ansari', age: 35, city: 'Columbia, SC')
Special.create(name: 'Buried Alive', runtime: 79, comedian_id: aziz_ansari.id, thumbnail: 'https://upload.wikimedia.org/wikipedia/en/9/94/Aziz_Ansari-Buried_Alive.jpg')
Special.create(name: 'Live at Madison Square Garden', runtime: 58, comedian_id: aziz_ansari.id, thumbnail: 'https://upload.wikimedia.org/wikipedia/en/c/c5/Aziz_Ansari_Live_at_Madison_Square_Garden.jpg')

#Dave Chappelle
dave_chapelle = Comedian.create(name: 'Dave Chappelle', age: 45, city: 'Washington D.C., US')
Special.create(name: 'Deep in the Heart of Texas', runtime: 66, comedian_id: dave_chapelle.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BODA1MDE3ZWYtMTliYi00YTc5LTk3MjQtZjY2YTlhMDQ3Y2Y3XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_UY268_CR4,0,182,268_AL_.jpg')
Special.create(name: 'Equanimity', runtime: 63, comedian_id: dave_chapelle.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg')
Special.create(name: 'The Age of Spin', runtime: 67, comedian_id: dave_chapelle.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BZjJlNjg1NzktYTI2Zi00NjgyLWFiM2ItZTgzYWZhMmZiNDNlXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg')
Special.create(name: 'The Bird Revelation', runtime: 49, comedian_id: dave_chapelle.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BNGYzOTE0YzEtMjc5NC00MTg2LTk2MDAtMzJlMjM1NTU1MjcwXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_UY268_CR5,0,182,268_AL_.jpg')

#Trevor Noah
trevor_noah = Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg, South Africa')
Special.create(name: 'Afraid of the Dark', runtime: 67, comedian_id: trevor_noah.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BMTZhNjNjNGUtYTc2Ni00ZDc4LWJjNDMtYjVlOTI5OGI5YzE5XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg')
Special.create(name: 'Son of Patricia', runtime: 63, comedian_id: trevor_noah.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BMTU4MTA5NjMyNl5BMl5BanBnXkFtZTgwNDY0OTI4NjM@._V1_UX182_CR0,0,182,268_AL_.jpg')

#Bo Burnham
bo_burnham = Comedian.create(name: 'Bo Burnham', age: 28, city: 'Hamilton, MA')
Special.create(name: 'what.', runtime: 75, comedian_id: bo_burnham.id, thumbnail: 'https://upload.wikimedia.org/wikipedia/en/c/c4/Bo_Burnham_what.jpeg')
Special.create(name: 'Make Happy', runtime: 60, comedian_id: bo_burnham.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BZjg0YmNiZTAtZDI2Yi00MTVhLTk3ZTctM2JiNjQwY2ZhMzg4XkEyXkFqcGdeQXVyMzE1NjI3MjI@._V1_UX182_CR0,0,182,268_AL_.jpg')

#Fred Armisen
fred_armisen = Comedian.create(name: 'Fred Armisen', age: 51, city: 'Hattiesburg, Mississippi')
Special.create(name: 'Standup For Drummers', runtime: 65, comedian_id: fred_armisen.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BZjgwZjQ5OTgtMWY0MC00YTQ5LWE2MzEtMWEyYTc5ODhlMTQyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg')
