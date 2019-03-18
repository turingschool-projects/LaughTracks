RSpec.describe 'a user visits comedians page' do
  context 'they visit /comedians' do
    before(:each) do
      Comedian.create(name: 'Tom Segura',
                      age: 39,
                      hometown: 'Cincinnati',
                      headshot_link: 'http://flapperscomedy.com/med/tomseguaheadshot.jpg')
      visit '/comedians'
    end

    it 'should show comedian information' do
      within '#comedian-id-1' do
        expect(page).to have_content('Tom Segura')
        expect(page).to have_content('39')
        expect(page).to have_content('Cincinnati')
      end
    end

    it 'should show comedian thumbnail' do
      within '#comedian-id-1' do
         expect(page).to have_xpath("//img[@src='http://flapperscomedy.com/med/tomseguaheadshot.jpg']")
      end
    end
  end
end
