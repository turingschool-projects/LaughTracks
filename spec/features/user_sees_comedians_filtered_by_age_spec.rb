RSpec.describe 'a user visits comedians page with age criteria' do
  context 'they visit /comedians?age=34' do
    before(:each) do
      Comedian.create(name: 'Tom Segura',
                      age: 39,
                      hometown: 'Cincinnati',
                      headshot_link: 'http://flapperscomedy.com/med/tomseguaheadshot.jpg')

      Comedian.create(name: 'Mitch Hedberg',
                      age: 34,
                      hometown: 'St. Paul',
                      headshot_link: 'https://upload.wikimedia.org/wikipedia/en/d/d5/Mitch_Hedberg.jpg')

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
  end
end
