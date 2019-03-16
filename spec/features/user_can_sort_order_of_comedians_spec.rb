RSpec.describe 'a user visits comedians page' do
  context 'they visit //comedians?sort=?' do
    before(:each) do
      Comedian.create(name: 'Tom Segura',
                      age: 39,
                      hometown: 'Cincinnati',
                      headshot_link: 'http://flapperscomedy.com/med/tomseguaheadshot.jpg')

      Comedian.create(name: 'Mitch Hedberg',
                      age: 37,
                      hometown: 'St. Paul',
                      headshot_link: 'https://upload.wikimedia.org/wikipedia/en/d/d5/Mitch_Hedberg.jpg')

      Comedian.create(name: 'Dave Chappelle',
                      age: 45,
                      hometown: 'Washington DC',
                      headshot_link: 'https://upload.wikimedia.org/wikipedia/commons/2/23/Dave_Chappelle_%2842791297960%29_%28cropped%29.jpg')
    end

    it 'should show comedians sorted by name' do
      visit '/comedians?sort=name'

      within '#comedian-id-3' do
        expect(page).to have_content('Dave Chappelle')
      end

      within '#comedian-id-2' do
        expect(page).to have_content('Mitch Hedberg')
      end

      within '#comedian-id-1' do
        expect(page).to have_content('Tom Segura')
      end
    end
  end
end
