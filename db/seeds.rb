require './config/environment.rb'

#Comedians
aziz_ansari = Comedian.create(name: 'Aziz Ansari', age: 35, city: 'Columbia, SC')
jim_jefferies = Comedian.create(name: 'Jim Jefferies', age: 41, city: 'Sydney, Australia')
dave_chapelle = Comedian.create(name: 'Dave Chappelle', age: 45, city: 'Washington D.C., US')
# Comedian.create(name: '', age: 0, city: '')

#Specials
Special.create(name: 'Bare', runtime: 76, comedian_id: jim_jefferies.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BMmRlNDE0ZDctZTMwYi00MWQ2LTk2MzctNjdjODM0YWY1MjNmXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UX182_CR0,0,182,268_AL_.jpg')
Special.create(name: 'Buried Alive', runtime: 79, comedian_id: aziz_ansari.id, thumbnail: 'https://upload.wikimedia.org/wikipedia/en/9/94/Aziz_Ansari-Buried_Alive.jpg')
Special.create(name: 'Live at Madison Square Garden', runtime: 58, comedian_id: aziz_ansari.id, thumbnail: 'https://upload.wikimedia.org/wikipedia/en/c/c5/Aziz_Ansari_Live_at_Madison_Square_Garden.jpg')
Special.create(name: 'Deep in the Heart of Texas', runtime: 66, comedian_id: dave_chapelle.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BODA1MDE3ZWYtMTliYi00YTc5LTk3MjQtZjY2YTlhMDQ3Y2Y3XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_UY268_CR4,0,182,268_AL_.jpg')
Special.create(name: 'Equanimity', runtime: 63, comedian_id: dave_chapelle.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg')
Special.create(name: 'The Age of Spin', runtime: 67, comedian_id: dave_chapelle.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BZjJlNjg1NzktYTI2Zi00NjgyLWFiM2ItZTgzYWZhMmZiNDNlXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg')
Special.create(name: 'The Bird Revelation', runtime: 49, comedian_id: dave_chapelle.id, thumbnail: 'https://m.media-amazon.com/images/M/MV5BNGYzOTE0YzEtMjc5NC00MTg2LTk2MDAtMzJlMjM1NTU1MjcwXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_UY268_CR5,0,182,268_AL_.jpg')
#Special.create(name: '', runtime: 0, comedian_id: 0, thumbnail: '')
