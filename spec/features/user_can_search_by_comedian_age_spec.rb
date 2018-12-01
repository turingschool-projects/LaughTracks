RSpec.describe 'Comedians index page with search query' do
  context 'as a user' do
    it 'shows information for comedians of a certain age' do
      demetri = Comedian.create(name: 'Demetri Martin', age: 45, city: 'New York City, New York')
      jim = Comedian.create(name: 'Jim Gaffigan', age: 52, city: 'Chesterson, Indiana')
      dave = Comedian.create(name: 'Dave Chappelle', age: 45, city: 'Washington, District of Columbia')
      hasan = Comedian.create(name: 'Hasan Minhaj', age: 33, city: 'Davis, California')

      Special.create(name: "Demetri Martin: The Overthinker", comedian_id: 1, run_time_minutes: 56, image_url: "https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_.jpg")
      Special.create(name: "Demetri Martin: Live (At the Time)", comedian_id: 1, run_time_minutes: 61, image_url: "https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_SY1000_SX675_AL_.jpg")
      Special.create(name: "Demetri Martin. Person.", comedian_id: 1, run_time_minutes: 42, image_url: "https://m.media-amazon.com/images/M/MV5BMjE0MDgwNDE0MF5BMl5BanBnXkFtZTcwMDAzMDQ1MQ@@._V1_.jpg")

      Special.create(name: "Jim Gaffigan: Obsessed", comedian_id: 2, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMjA1MDc3NzkyNl5BMl5BanBnXkFtZTgwNDYzNjM3MTE@._V1_.jpg")
      Special.create(name: "Jim Gaffigan: King Baby", comedian_id: 2, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMjI3ODgwMDU2NF5BMl5BanBnXkFtZTgwMTczMzA2MDE@._V1_.jpg")
      Special.create(name: "Jim Gaffigan: Mr. Universe", comedian_id: 2, run_time_minutes: 78, image_url: "https://m.media-amazon.com/images/M/MV5BNTE4NjU0NTYxM15BMl5BanBnXkFtZTcwMzAzMjA1OQ@@._V1_.jpg")
      Special.create(name: "Jim Gaffigan: Cinco", comedian_id: 2, run_time_minutes: 73, image_url: "https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
      Special.create(name: "Jim Gaffigan: Noble Ape", comedian_id: 2, run_time_minutes: 90, image_url: "https://m.media-amazon.com/images/M/MV5BODAyZjM3OGMtZmY2Zi00YjM0LTlhZDYtNTZmYmM2ODQ4NTNiXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
      Special.create(name: "Jim Gaffigan: Beyond the Pale", comedian_id: 2, run_time_minutes: 72, image_url: "https://m.media-amazon.com/images/M/MV5BMTk3NjU2ODY5NF5BMl5BanBnXkFtZTgwNTEyODkwMzE@._V1_.jpg")

      Special.create(name: "Dave Chappelle: Killin' Them Softly", comedian_id: 3, run_time_minutes: 57, image_url: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg")
      Special.create(name: "Dave Chappelle: For What It's Worth", comedian_id: 3, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BZGQ2MjBjNDEtYWVlNi00Nzc3LTg2NjUtYWY3ZTkwNTAwNDQyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
      Special.create(name: "Dave Chappelle: Equanimity", comedian_id: 3, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")

      Special.create(name: "Hasan Minhaj: Homecoming King", comedian_id: 4, run_time_minutes: 73, image_url: "https://m.media-amazon.com/images/M/MV5BOWU2NTFjYTAtNDVkOC00YjJiLTg0NWMtODVmYzYwYjBiMmI3XkEyXkFqcGdeQXVyMjYwMTkwNDc@._V1_.jpg")

      visit '/comedians?age=45'

      expect(page).to have_content("Comedian: #{demetri.name}")
      expect(page).to have_content("Age: #{demetri.age}")
      expect(page).to have_content("Hometown: #{demetri.city}")
      expect(page).to have_content("Number of specials: #{demetri.specials.count}")

      expect(page).to have_content("Comedian: #{dave.name}")
      expect(page).to have_content("Age: #{dave.age}")
      expect(page).to have_content("Hometown: #{dave.city}")
      expect(page).to have_content("Number of specials: #{dave.specials.count}")

      expect(page).to_not have_content(jim.name)
      expect(page).to_not have_content(jim.age)
      expect(page).to_not have_content(jim.city)
      expect(page).to_not have_content("Number of specials: #{jim.specials.count}")

      expect(page).to_not have_content(hasan.name)
      expect(page).to_not have_content(hasan.age)
      expect(page).to_not have_content(hasan.city)
      expect(page).to_not have_content("Number of specials: #{hasan.specials.count}")
    end
  end

  it 'displays accurate stats given search' do
    demetri = Comedian.create(name: 'Demetri Martin', age: 45, city: 'New York City, New York')
    jim = Comedian.create(name: 'Jim Gaffigan', age: 52, city: 'Chesterson, Indiana')
    dave = Comedian.create(name: 'Dave Chappelle', age: 45, city: 'Washington, District of Columbia')
    hasan = Comedian.create(name: 'Hasan Minhaj', age: 33, city: 'Davis, California')

    Special.create(name: "Demetri Martin: The Overthinker", comedian_id: 1, run_time_minutes: 56, image_url: "https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_.jpg")
    Special.create(name: "Demetri Martin: Live (At the Time)", comedian_id: 1, run_time_minutes: 61, image_url: "https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_SY1000_SX675_AL_.jpg")
    Special.create(name: "Demetri Martin. Person.", comedian_id: 1, run_time_minutes: 42, image_url: "https://m.media-amazon.com/images/M/MV5BMjE0MDgwNDE0MF5BMl5BanBnXkFtZTcwMDAzMDQ1MQ@@._V1_.jpg")

    Special.create(name: "Jim Gaffigan: Obsessed", comedian_id: 2, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMjA1MDc3NzkyNl5BMl5BanBnXkFtZTgwNDYzNjM3MTE@._V1_.jpg")
    Special.create(name: "Jim Gaffigan: King Baby", comedian_id: 2, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMjI3ODgwMDU2NF5BMl5BanBnXkFtZTgwMTczMzA2MDE@._V1_.jpg")
    Special.create(name: "Jim Gaffigan: Mr. Universe", comedian_id: 2, run_time_minutes: 78, image_url: "https://m.media-amazon.com/images/M/MV5BNTE4NjU0NTYxM15BMl5BanBnXkFtZTcwMzAzMjA1OQ@@._V1_.jpg")
    Special.create(name: "Jim Gaffigan: Cinco", comedian_id: 2, run_time_minutes: 73, image_url: "https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
    Special.create(name: "Jim Gaffigan: Noble Ape", comedian_id: 2, run_time_minutes: 90, image_url: "https://m.media-amazon.com/images/M/MV5BODAyZjM3OGMtZmY2Zi00YjM0LTlhZDYtNTZmYmM2ODQ4NTNiXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
    Special.create(name: "Jim Gaffigan: Beyond the Pale", comedian_id: 2, run_time_minutes: 72, image_url: "https://m.media-amazon.com/images/M/MV5BMTk3NjU2ODY5NF5BMl5BanBnXkFtZTgwNTEyODkwMzE@._V1_.jpg")

    Special.create(name: "Dave Chappelle: Killin' Them Softly", comedian_id: 3, run_time_minutes: 57, image_url: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg")
    Special.create(name: "Dave Chappelle: For What It's Worth", comedian_id: 3, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BZGQ2MjBjNDEtYWVlNi00Nzc3LTg2NjUtYWY3ZTkwNTAwNDQyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
    Special.create(name: "Dave Chappelle: Equanimity", comedian_id: 3, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")

    Special.create(name: "Hasan Minhaj: Homecoming King", comedian_id: 4, run_time_minutes: 73, image_url: "https://m.media-amazon.com/images/M/MV5BOWU2NTFjYTAtNDVkOC00YjJiLTg0NWMtODVmYzYwYjBiMmI3XkEyXkFqcGdeQXVyMjYwMTkwNDc@._V1_.jpg")

    visit '/comedians?age=45'

    expect(page).to have_content("#{demetri.name}: #{demetri.specials.count}")
    expect(page).to have_content("#{dave.name}: #{dave.specials.count}")

    expect(page).to_not have_content("#{hasan.name}: #{hasan.specials.count}")
    expect(page).to_not have_content("#{jim.name}: #{jim.specials.count}")
    expect(page).to_not have_content(hasan.name)
    expect(page).to_not have_content(jim.name)

    expect(page).to have_content("New York City, New York")
    expect(page).to have_content("Washington, District of Columbia")

    expect(page).to_not have_content("Chesterson, Indiana")
    expect(page).to_not have_content("Davis, California")

    expect(page).to have_content("Special Run Time: 56")
    expect(page).to have_content("Comedian Age: 45")
  end
end
