RSpec.describe 'Adding a comedian' do
  context 'as a user' do
    it 'it can create a comedian, update index page, and redirect there' do
      Comedian.create(name: 'Demetri Martin', age: 45, city: 'New York City, New York')
      Comedian.create(name: 'Jim Gaffigan', age: 52, city: 'Chesterson, Indiana')
      Comedian.create(name: 'Dave Chappelle', age: 45, city: 'Washington, District of Columbia')
      Comedian.create(name: 'Hasan Minhaj', age: 33, city: 'Davis, California')

      Special.create(name: "Demetri Martin: The Overthinker", comedian_id: 1, run_time_minutes: 56, image_url: "https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_.jpg")
      Special.create(name: "Jim Gaffigan: Obsessed", comedian_id: 2, run_time_minutes: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMjA1MDc3NzkyNl5BMl5BanBnXkFtZTgwNDYzNjM3MTE@._V1_.jpg")
      Special.create(name: "Dave Chappelle: Killin' Them Softly", comedian_id: 3, run_time_minutes: 57, image_url: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg")
      Special.create(name: "Hasan Minhaj: Homecoming King", comedian_id: 4, run_time_minutes: 73, image_url: "https://m.media-amazon.com/images/M/MV5BOWU2NTFjYTAtNDVkOC00YjJiLTg0NWMtODVmYzYwYjBiMmI3XkEyXkFqcGdeQXVyMjYwMTkwNDc@._V1_.jpg")

      visit '/comedians'
      expect(Comedian.count).to eq(4)
      expect(page).to_not have_content("George Carlin")
      expect(page).to_not have_content("Age: 71")
      expect(page).to_not have_content("Number of specials: 0")
      expect(page).to_not have_content("George Carlin: 0")

      visit '/comedians/new'

      fill_in 'comedian[name]', with: "George Carlin"
      fill_in 'comedian[age]', with: 71
      fill_in 'comedian[hometown]', with: "New York City, New York"

      click_button "submit"
      expect(current_path).to eq('/comedians')

      expect(Comedian.count).to eq(5)
      found = Comedian.where("id = 5")[0]
      expect(found.name).to eq("George Carlin")
      expect(found.age).to eq(71)
      expect(found.city).to eq("New York City, New York")

      within '.specials-count' do
        expect(page).to have_content("#{found.name}: #{found.specials.count}")
      end

      within "#comedian-info-#{found.id}" do
        expect(page).to have_content("Comedian: #{found.name}")
        expect(page).to have_content("Age: #{found.age}")
        expect(page).to have_content("Number of specials: #{found.specials.count}")
      end
    end
  end
end
