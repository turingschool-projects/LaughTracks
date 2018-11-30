RSpec.describe 'Comedians index page with search query' do
  context 'as a user' do
    it 'finds comedians of a certain age' do
      demetri = Comedian.create(name: 'Demetri Martin', age: 45, city: 'New York City, New York')
      jim = Comedian.create(name: 'Jim Gaffigan', age: 52, city: 'Chesterson, Indiana')
      dave = Comedian.create(name: 'Dave Chappelle', age: 45, city: 'Washington, District of Columbia')
      hasan = Comedian.create(name: 'Hasan Minhaj', age: 33, city: 'Davis, California')
      Special.create(name: 'Bill Hicks: Revelations', comedian_id: 2, run_time_minutes: 57, image_url: 'https://m.media-amazon.com/images/M/MV5BMjM1OTAwMDE3N15BMl5BanBnXkFtZTgwNjkzMzYwNzE@._V1_.jpg')

      visit '/comedians?age=45'
      
      expect(page).to have_content("Comedian: #{demetri.name}")
      expect(page).to have_content("Age: #{demetri.age}")
      expect(page).to have_content("Hometown: #{demetri.city}")

      expect(page).to have_content("Comedian: #{dave.name}")
      expect(page).to have_content("Age: #{dave.age}")
      expect(page).to have_content("Hometown: #{dave.city}")

      expect(page).to_not have_content(jim.name)
      expect(page).to_not have_content(jim.age)
      expect(page).to_not have_content(jim.city)

      expect(page).to_not have_content(hasan.name)
      expect(page).to_not have_content(hasan.age)
      expect(page).to_not have_content(hasan.city)
    end
  end
end
