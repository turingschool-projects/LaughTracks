RSpec.describe 'as a visitor' do
  describe 'when i visit the comedians page' do

    before(:each) do
      @comedian_1 = Comedian.create(name: "John Mulaney", age: "36", city: "Chicago, IL")
      @special_1_1 = @comedian_1.specials.create(name: "Kid Gorgeous at Radio City", run_time: "65", image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg")
      @special_1_2 = @comedian_1.specials.create(name: "The Comeback Kid", run_time: "61", image: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
      @special_1_3 = @comedian_1.specials.create(name: "New in Town", run_time: "60", image: "https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg")

      @comedian_2 = Comedian.create(name: "Jim Gaffigan", age: "52", city: "Chesterton, IN")
      @special_2_1 = @comedian_2.specials.create(name: "Noble Ape", run_time: "70", image: "https://m.media-amazon.com/images/M/MV5BODAyZjM3OGMtZmY2Zi00YjM0LTlhZDYtNTZmYmM2ODQ4NTNiXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
      @special_2_2 = @comedian_2.specials.create(name: "Cinco", run_time: "73", image: "https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
      @special_2_3 = @comedian_2.specials.create(name: "Obsessed", run_time: "60", image: "https://m.media-amazon.com/images/M/MV5BMjA1MDc3NzkyNl5BMl5BanBnXkFtZTgwNDYzNjM3MTE@._V1_UY268_CR9,0,182,268_AL_.jpg")

      @comedian_3 = Comedian.create(name: "Amy Schumer", age: "37", city: "NYC, NY")
      @special_3_1 = @comedian_3.specials.create(name: "The Leather Special", run_time: "57", image: "https://m.media-amazon.com/images/M/MV5BMGMxYWY1MTktZDFlNC00YjdjLTk5MGMtODEwNTZiY2MxZjk1XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_UY268_CR4,0,182,268_AL_.jpg")
      @special_3_2 = @comedian_3.specials.create(name: "Amy Schumer: Live at the Apollo", run_time: "61", image: "https://m.media-amazon.com/images/M/MV5BMTkzMzU1MTc3M15BMl5BanBnXkFtZTgwNjYyMjQ5NjE@._V1_UX182_CR0,0,182,268_AL_.jpg")
      @special_3_3 = @comedian_3.specials.create(name: "Mostly Sexy Stuff", run_time: "61", image: "https://m.media-amazon.com/images/M/MV5BMTQxOTI2ODgxNF5BMl5BanBnXkFtZTgwMzc0NDAxMzE@._V1_UY268_CR9,0,182,268_AL_.jpg")
    end

    it 'should show a Comedian\'s info' do

      visit '/comedians'
      within("#name-#{@comedian_1.id}") do
        expect(page).to have_content(@comedian_1.name)
      end

      within("#comedian-#{@comedian_1.id}") do
        expect(page).to have_content("Age: #{@comedian_1.age}")
        expect(page).to have_content("From: #{@comedian_1.city}")
        expect(page).to have_content("Total Specials: #{@comedian_1.specials.count}")
      end
    end

    it 'should show a Specials\'s info' do

      visit '/comedians'
      within("#special-#{@special_1_1.id}") do
        expect(page).to have_content(@special_1_1.name)
        expect(page).to have_content("Run Time: #{@special_1_1.run_time}")
      end
    end

    it 'should show Statistics' do

      visit '/comedians'

      within("#statistics") do
        expect(page).to have_content(Comedian.average_age)
        expect(page).to have_content(Comedian.cities[0])
        expect(page).to have_content(Special.average_run_time)
        expect(page).to have_content(Special.all.count)
      end
    end
  end

  describe 'when i visit the comedians page and query for age: 34' do

    before(:each) do
      @comedian_1 = Comedian.create(name: "John Mulaney", age: "34", city: "Chicago, IL")
      @special_1_1 = @comedian_1.specials.create(name: "Kid Gorgeous at Radio City", run_time: "65", image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg")
      @special_1_2 = @comedian_1.specials.create(name: "The Comeback Kid", run_time: "61", image: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
      @special_1_3 = @comedian_1.specials.create(name: "New in Town", run_time: "60", image: "https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg")

      @comedian_2 = Comedian.create(name: "Jim Gaffigan", age: "52", city: "Chesterton, IN")
      @special_2_1 = @comedian_2.specials.create(name: "Noble Ape", run_time: "70", image: "https://m.media-amazon.com/images/M/MV5BODAyZjM3OGMtZmY2Zi00YjM0LTlhZDYtNTZmYmM2ODQ4NTNiXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
      @special_2_2 = @comedian_2.specials.create(name: "Cinco", run_time: "73", image: "https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
      @special_2_3 = @comedian_2.specials.create(name: "Obsessed", run_time: "60", image: "https://m.media-amazon.com/images/M/MV5BMjA1MDc3NzkyNl5BMl5BanBnXkFtZTgwNDYzNjM3MTE@._V1_UY268_CR9,0,182,268_AL_.jpg")

      @comedian_3 = Comedian.create(name: "Amy Schumer", age: "34", city: "NYC, NY")
      @special_3_1 = @comedian_3.specials.create(name: "The Leather Special", run_time: "57", image: "https://m.media-amazon.com/images/M/MV5BMGMxYWY1MTktZDFlNC00YjdjLTk5MGMtODEwNTZiY2MxZjk1XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_UY268_CR4,0,182,268_AL_.jpg")
      @special_3_2 = @comedian_3.specials.create(name: "Amy Schumer: Live at the Apollo", run_time: "61", image: "https://m.media-amazon.com/images/M/MV5BMTkzMzU1MTc3M15BMl5BanBnXkFtZTgwNjYyMjQ5NjE@._V1_UX182_CR0,0,182,268_AL_.jpg")
      @special_3_3 = @comedian_3.specials.create(name: "Mostly Sexy Stuff", run_time: "61", image: "https://m.media-amazon.com/images/M/MV5BMTQxOTI2ODgxNF5BMl5BanBnXkFtZTgwMzc0NDAxMzE@._V1_UY268_CR9,0,182,268_AL_.jpg")
    end

    it 'should show a Comedian\'s info' do

      visit '/comedians?age=34'
      within("#name-#{@comedian_1.id}") do
        expect(page).to have_content(@comedian_1.name)
      end

      within("#comedian-#{@comedian_1.id}") do
        expect(page).to have_content("Age: #{@comedian_1.age}")
        expect(page).to have_content("From: #{@comedian_1.city}")
        expect(page).to have_content("Total Specials: #{@comedian_1.specials.count}")
      end
    end

    it 'should not show certain Comedian\'s info' do

      visit '/comedians?age=34'
      within(".comedians") do
        expect(page).to_not have_content(@comedian_2.name)
      end

      within(".comedians") do
        expect(page).to_not have_content("Age: #{@comedian_2.age}")
        expect(page).to_not have_content("From: #{@comedian_2.city}")
      end

    end
  end


end
