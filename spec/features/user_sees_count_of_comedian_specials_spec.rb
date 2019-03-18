RSpec.describe 'a user visits comedians page' do
  context 'they visit /comedians' do
    before(:each) do
      tom = Comedian.create(name: 'Tom Segura', age: 39, hometown: 'Cincinnati', headshot_link: 'http://flapperscomedy.com/med/tomseguaheadshot.jpg')
      tom.specials.create(name: 'Tom Segura: Disgraceful', runtime: 71, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMGUyNTBiZjktMjk5Ni00Yzk3LTlkZTUtY2FiOTJiOGRhZWY3XkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')
      tom.specials.create(name: 'Tom Segura: Mostly Stories', runtime: 73, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BZWE2Nzc5N2YtOWM0OS00ZWVmLThhOTctNjNlNGI0NTQzMTU5XkEyXkFqcGdeQXVyMzAzODY0NzE@._V1_.jpg')
      mitch = Comedian.create(name: 'Mitch Hedberg', age: 37, hometown: 'St. Paul', headshot_link: 'https://upload.wikimedia.org/wikipedia/en/d/d5/Mitch_Hedberg.jpg')
      mitch.specials.create(name: 'Comedy Central: Mitch Hedberg', runtime: 23, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMTQ0NDAyNDg5OV5BMl5BanBnXkFtZTgwMDUxNjEyMjE@._V1_.jpg')

      visit '/comedians'
    end

    it 'should show count of a comedians specials' do
      within '#comedian-id-1' do
        expect(page).to have_content('Number of specials: 2')
      end

      within '#comedian-id-2' do
        expect(page).to have_content('Number of specials: 1')
      end
    end

    it 'should show total count of specials in the statistics' do
      within '#statistics' do
        expect(page).to have_content('3')
      end
    end
  end
end
