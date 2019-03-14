RSpec.describe 'a user visits comedians page' do
  context 'they visit /comedians' do
    it 'should show comedian specials names' do
      tom = Comedian.create(name: 'Tom Segura',
                      age: 39,
                      hometown: 'Cincinnati',
                      headshot_link: 'http://flapperscomedy.com/med/tomseguaheadshot.jpg')
      tom.specials.create(name: 'Tom Segura: Disgraceful',
                          runtime: 71,
                          thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMGUyNTBiZjktMjk5Ni00Yzk3LTlkZTUtY2FiOTJiOGRhZWY3XkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')
      tom.specials.create(name: 'Tom Segura: Mostly Stories',
                          runtime: 73,
                          thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BZWE2Nzc5N2YtOWM0OS00ZWVmLThhOTctNjNlNGI0NTQzMTU5XkEyXkFqcGdeQXVyMzAzODY0NzE@._V1_.jpg')

      visit '/comedians'

      within '#comedian-id-1-specials' do
        expect(page).to have_content('Tom Segura: Disgraceful')
        expect(page).to have_content('Tom Segura: Mostly Stories')
      end
    end
  end
end
