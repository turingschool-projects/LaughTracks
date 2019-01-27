require_relative '../app/models/comedian'
require_relative '../app/models/special'

Comedian.destroy_all
Special.destroy_all

@img_1 = "https://m.media-amazon.com/images/M/MV5BZjgwZjQ5OTgtMWY0MC00YTQ5LWE2MzEtMWEyYTc5ODhlMTQyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg"
@img_2 = "https://m.media-amazon.com/images/M/MV5BODU5MWI2YWEtNTQ3Ny00OWQ3LThkNTUtYzdiNDVjNDczM2NiXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg"
@img_3 = "https://m.media-amazon.com/images/M/MV5BMTQ0Mzc4MzkwOF5BMl5BanBnXkFtZTcwMjc1MTk5Mw@@._V1_.jpg"
@comedian_1 = Comedian.create(name: 'Comedian 1', age: 31, city: 'New York')
@comedian_2 = Comedian.create(name: 'Comedian 2', age: 42, city: 'New York')
@comedian_3 = Comedian.create(name: 'Comedian 3', age: 53, city: 'Los Angeles')
@comics = [@comedian_1, @comedian_2, @comedian_3]

@special_1 = @comedian_1.specials.create(name: 'Special 1', runtime: 64, thumbnail: @img_1)
@special_2 = @comedian_1.specials.create(name: 'Special 2', runtime: 85, thumbnail: @img_2)
@special_3 = @comedian_2.specials.create(name: 'Special 3', runtime: 41, thumbnail: @img_3)
