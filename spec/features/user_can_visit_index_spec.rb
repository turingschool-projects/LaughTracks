RSpec.describe 'Comedians index page' do
  context 'as a user' do
    it 'shows information about comedians' do
      george = Comedian.create(name: 'George Carlin', age: 50, city: 'New York')
      richard = Comedian.create(name: 'Richard', age: 45, city: 'New York')
      robin = Comedian.create(name: 'Robin Williams', age: 35, city: 'New York')
      Special.create(name: 'Bill Hicks: Revelations', comedian_id: 2, run_time_minutes: 57, image_url: 'https://m.media-amazon.com/images/M/MV5BMjM1OTAwMDE3N15BMl5BanBnXkFtZTgwNjkzMzYwNzE@._V1_.jpg')

      visit '/comedians'

      expect(page).to have_content("Comedian: #{george.name}")
      expect(page).to have_content("Age: #{george.age}")
      expect(page).to have_content("Hometown: #{george.city}")
      expect(page).to have_content("Number of specials: #{george.specials.count}")

      expect(page).to have_content("Comedian: #{richard.name}")
      expect(page).to have_content("Age: #{richard.age}")
      expect(page).to have_content("Number of specials: #{richard.specials.count}")

      expect(page).to have_content("Comedian: #{robin.name}")
      expect(page).to have_content("Age: #{robin.age}")
      expect(page).to have_content("Number of specials: #{robin.specials.count}")
    end
    it 'shows information about specials for comedians' do
      jerry = Comedian.create(name: 'Jerry Seinfeld', age: 64, city: 'Brooklyn, New York City, New York')
      bill = Comedian.create(name: 'Bill Hicks', age: 32, city: 'Little Rock, Arkansas')

      bill_1 = Special.create(name: 'Bill Hicks: Revelations', comedian_id: 2, run_time_minutes: 57, image_url: 'https://m.media-amazon.com/images/M/MV5BMjM1OTAwMDE3N15BMl5BanBnXkFtZTgwNjkzMzYwNzE@._V1_.jpg')
      bill_2 = Special.create(name: 'Bill Hicks: Relentless', comedian_id: 2, run_time_minutes: 61, image_url: 'https://m.media-amazon.com/images/M/MV5BMjAwNDYyMjg1MV5BMl5BanBnXkFtZTcwNjEwMjEzMQ@@._V1_.jpg')

      jerry_1 = Special.create(name: "Jerry Seinfeld: 'I'm Telling You for the Last Time", comedian_id: 1, run_time_minutes: 75, image_url: 'https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg')
      jerry_2 = Special.create(name: 'Stand-Up Confidential', comedian_id: 1, run_time_minutes: 55, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/45/Stand-Up_Confidential_video_box.jpg/220px-Stand-Up_Confidential_video_box.jpg')
      jerry_3 = Special.create(name: 'Jerry Before Seinfeld', comedian_id: 1, run_time_minutes: 61, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Jerry_Before_Seinfeld_poster.jpg/220px-Jerry_Before_Seinfeld_poster.jpg')

      visit '/comedians'

      expect(page).to have_content("Comedian: #{jerry.name}")
      expect(page).to have_content("Age: #{jerry.age}")
      expect(page).to have_content("Hometown: #{jerry.city}")
      expect(page).to have_content("Special Name: #{jerry_1.name}")
      expect(page).to have_content("Length(minutes): #{jerry_1.run_time_minutes}")
      expect(page).to have_content("Special Name: #{jerry_2.name}")
      expect(page).to have_content("Length(minutes): #{jerry_2.run_time_minutes}")
      expect(page).to have_content("Special Name: #{jerry_3.name}")
      expect(page).to have_content("Length(minutes): #{jerry_3.run_time_minutes}")

      expect(page).to have_content("Comedian: #{bill.name}")
      expect(page).to have_content("Age: #{bill.age}")
      expect(page).to have_content("Hometown: #{bill.city}")
      expect(page).to have_content("Special Name: #{bill_1.name}")
      expect(page).to have_content("Length(minutes): #{bill_1.run_time_minutes}")
      expect(page).to have_content("Special Name: #{bill_2.name}")
      expect(page).to have_content("Length(minutes): #{bill_2.run_time_minutes}")
    end
    it 'shows average run time for all specials' do
      Comedian.create(name: 'Jerry Seinfeld', age: 64, city: 'Brooklyn, New York City, New York')
      Comedian.create(name: 'Bill Hicks', age: 32, city: 'Little Rock, Arkansas')

      Special.create(name: 'Bill Hicks: Revelations', comedian_id: 2, run_time_minutes: 57, image_url: 'https://m.media-amazon.com/images/M/MV5BMjM1OTAwMDE3N15BMl5BanBnXkFtZTgwNjkzMzYwNzE@._V1_.jpg')
      Special.create(name: 'Bill Hicks: Relentless', comedian_id: 2, run_time_minutes: 61, image_url: 'https://m.media-amazon.com/images/M/MV5BMjAwNDYyMjg1MV5BMl5BanBnXkFtZTcwNjEwMjEzMQ@@._V1_.jpg')

      Special.create(name: "Jerry Seinfeld: 'I'm Telling You for the Last Time", comedian_id: 1, run_time_minutes: 75, image_url: 'https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg')
      Special.create(name: 'Stand-Up Confidential', comedian_id: 1, run_time_minutes: 55, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/45/Stand-Up_Confidential_video_box.jpg/220px-Stand-Up_Confidential_video_box.jpg')
      Special.create(name: 'Jerry Before Seinfeld', comedian_id: 1, run_time_minutes: 61, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Jerry_Before_Seinfeld_poster.jpg/220px-Jerry_Before_Seinfeld_poster.jpg')

      visit '/comedians'

      expect(page).to have_content("Special Run Time: 61.8")
    end
    it 'shows average age for all comedians on page' do
      Comedian.create(name: 'Hasan Minhaj', age: 33, city: 'Davis, California')
      Comedian.create(name: 'Bo Burnham', age: 28, city: 'Hamilton, Massachusetts')
      Comedian.create(name: 'John Mulaney', age: 36, city: 'Chicago, Illinois')
      Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg, South Africa')
      Comedian.create(name: 'Jerry Seinfeld', age: 64, city: 'Brooklyn, New York City, New York')
      Comedian.create(name: 'Bill Hicks', age: 32, city: 'Little Rock, Arkansas')
      Special.create(name: 'Bill Hicks: Revelations', comedian_id: 2, run_time_minutes: 57, image_url: 'https://m.media-amazon.com/images/M/MV5BMjM1OTAwMDE3N15BMl5BanBnXkFtZTgwNjkzMzYwNzE@._V1_.jpg')

      visit '/comedians'

      expect(page).to have_content("Comedian Age: 37.8")
    end

    it 'shows a list of comedians and number of specials' do
      jerry = Comedian.create(name: 'Jerry Seinfeld', age: 64, city: 'Brooklyn, New York City, New York')
      bill = Comedian.create(name: 'Bill Hicks', age: 32, city: 'Little Rock, Arkansas')

      Special.create(name: 'Bill Hicks: Revelations', comedian_id: 2, run_time_minutes: 57, image_url: 'https://m.media-amazon.com/images/M/MV5BMjM1OTAwMDE3N15BMl5BanBnXkFtZTgwNjkzMzYwNzE@._V1_.jpg')
      Special.create(name: 'Bill Hicks: Relentless', comedian_id: 2, run_time_minutes: 61, image_url: 'https://m.media-amazon.com/images/M/MV5BMjAwNDYyMjg1MV5BMl5BanBnXkFtZTcwNjEwMjEzMQ@@._V1_.jpg')

      Special.create(name: "Jerry Seinfeld: 'I'm Telling You for the Last Time", comedian_id: 1, run_time_minutes: 75, image_url: 'https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg')
      Special.create(name: 'Stand-Up Confidential', comedian_id: 1, run_time_minutes: 55, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/45/Stand-Up_Confidential_video_box.jpg/220px-Stand-Up_Confidential_video_box.jpg')
      Special.create(name: 'Jerry Before Seinfeld', comedian_id: 1, run_time_minutes: 61, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Jerry_Before_Seinfeld_poster.jpg/220px-Jerry_Before_Seinfeld_poster.jpg')

      visit '/comedians'

      expect(page).to have_content("#{jerry.name}: #{jerry.specials.count}")
      expect(page).to have_content("#{bill.name}: #{bill.specials.count}")
    end

    it 'shows a list of unique hometowns for comedians' do
      Comedian.create(name: 'George Carlin', age: 71, city: 'New York City, New York')
      Comedian.create(name: 'Richard Pryor', age: 65, city: 'Peoria, Illinois')
      Comedian.create(name: 'Robin Williams', age: 63, city: 'Chicago, Illinois')
      Comedian.create(name: 'Demetri Martin', age: 45, city: 'New York City, New York')
      Comedian.create(name: 'Jim Gaffigan', age: 52, city: 'Chesterson, Indiana')
      Comedian.create(name: 'Dave Chappelle', age: 45, city: 'Washington, District of Columbia')
      Comedian.create(name: 'Hasan Minhaj', age: 33, city: 'Davis, California')
      Comedian.create(name: 'Bo Burnham', age: 28, city: 'Hamilton, Massachusetts')
      Comedian.create(name: 'John Mulaney', age: 36, city: 'Chicago, Illinois')
      Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg, South Africa')
      Comedian.create(name: 'Jerry Seinfeld', age: 64, city: 'Brooklyn, New York City, New York')
      Comedian.create(name: 'Bill Hicks', age: 32, city: 'Little Rock, Arkansas')
      Special.create(name: 'Bill Hicks: Revelations', comedian_id: 2, run_time_minutes: 57, image_url: 'https://m.media-amazon.com/images/M/MV5BMjM1OTAwMDE3N15BMl5BanBnXkFtZTgwNjkzMzYwNzE@._V1_.jpg')
      require "pry"; binding.pry
      visit '/comedians'

      unique = [
        "New York City, New York",
        "Peoria, Illinois",
        "Chesterson, Indiana",
        "Washington, District of Columbia",
        "Davis, California",
        "Hamilton, Massachusetts",
        "Chicago, Illinois",
        "Brooklyn, New York City, New York",
        "Johannesburg, South Africa",
        "Little Rock, Arkansas"
      ]

      unique.each do |city_name|
        expect(page).to have_content(city_name)
      end
    end
  end
end
