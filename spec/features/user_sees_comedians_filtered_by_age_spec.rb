RSpec.describe 'a user visits comedians page with age criteria' do
  context 'they visit /comedians?age=34' do
    before(:each) do
      c1 = Comedian.create(name: 'Tom Segura', age: 39, hometown: 'Cincinnati', headshot_link: 'http://flapperscomedy.com/med/tomseguaheadshot.jpg')
      c1.specials.create(name: 'Tom Segura: Disgraceful', runtime: 71, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMGUyNTBiZjktMjk5Ni00Yzk3LTlkZTUtY2FiOTJiOGRhZWY3XkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')
      c1.specials.create(name: 'Tom Segura: Mostly Stories', runtime: 73, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BZWE2Nzc5N2YtOWM0OS00ZWVmLThhOTctNjNlNGI0NTQzMTU5XkEyXkFqcGdeQXVyMzAzODY0NzE@._V1_.jpg')

      c2 = Comedian.create(name: 'Mitch Hedberg', age: 34, hometown: 'St. Paul', headshot_link: 'https://upload.wikimedia.org/wikipedia/en/d/d5/Mitch_Hedberg.jpg')
      c2.specials.create(name: 'Comedy Central: Mitch Hedberg', runtime: 28, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMTQ0NDAyNDg5OV5BMl5BanBnXkFtZTgwMDUxNjEyMjE@._V1_.jpg')
      c2.specials.create(name: 'Just for Laughs', runtime: 30, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMTc4NzI1NzY4N15BMl5BanBnXkFtZTcwMjUwNDY3Mg@@._V1_.jpg')

      visit '/comedians?age=34'
    end

    it 'should show comedian information with age 34' do
      expect(page).to have_content('Mitch Hedberg')
      expect(page).to have_content('34')
      expect(page).to have_content('St. Paul')
    end

    it 'should not show comedians with ages other than 34' do
      expect(page).not_to have_content('Tom Segura')
      expect(page).not_to have_content('39')
      expect(page).not_to have_content('Cincinnati')
    end

    it 'should show average age of 34' do
      within '#statistics' do
        expect(page).to have_content('34')
      end
    end

    it 'should show average special length of only comedians age 34' do
      within '#statistics' do
        expect(page).to have_content('29')
      end
    end

    it 'should show count of specials of only comedians age 34' do
      within '#statistics' do
        expect(page).to have_content('2')
      end
    end

    it 'should show cities of only comedians age 34' do
      within '#statistics' do
        expect(page).to have_content('St. Paul')
        expect(page).not_to have_content('Cincinnati')
      end
    end
  end
end
