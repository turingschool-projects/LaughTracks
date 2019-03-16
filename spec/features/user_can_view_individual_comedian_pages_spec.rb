RSpec.describe 'a user visits comedians page' do
  context 'they visit /comedians' do
    before(:each) do
      Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
      Comedian.create(name: 'Dave Chappelle', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')

      visit '/comedians'
    end

    it 'should show links for every comedians name' do
      within '#comedian-id-1' do
        expect(page).to have_link('Mitch Hedberg', href: '/comedians/1')
      end

      within '#comedian-id-2' do
        expect(page).to have_link('Dave Chappelle', href: '/comedians/2')
      end
    end

    context 'they click on a comedians name' do
      before(:each) do
        click_link 'Mitch Hedberg'
      end

      it 'should show a page with only that comedian' do
        expect(page).to have_content('Mitch Hedberg')
        expect(page).not_to have_content('Dave Chappelle')
      end
    end
  end
end
