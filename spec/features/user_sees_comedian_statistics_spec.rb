RSpec.describe 'a user visits comedians page' do
  context 'they visit /comedians' do
    before(:each) do
      c2 = Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
      c2.specials.create(name: 'Comedy Central: Mitch Hedberg', runtime: 23, thumbnail_link: '1.jpg')
      c2.specials.create(name: 'Just for Laughs', runtime: 30, thumbnail_link: '1.jpg')

      c3 = Comedian.create(name: 'Dave Chappelle', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')
      c3.specials.create(name: 'Dave Chappelle: Equanimity', runtime: 60, thumbnail_link: '2.jpg')
      c3.specials.create(name: 'Dave Chappelle: The Bird Revelation', runtime: 49, thumbnail_link: '1.jpg')

      visit '/comedians'
    end

    it 'should show comedian average age of all comedians on page' do
      within "#statistics" do
        expect(page).to have_content('46.5')
      end
    end

    it 'should show average runtime of all comedian specials on page' do
      within "#statistics" do
        expect(page).to have_content('40.5')
      end
    end

    it 'should show all hometowns of comedians on page' do
      within "#statistics" do
        expect(page).to have_content('St. Paul')
        expect(page).to have_content('Washington DC')
      end
    end
  end
end
