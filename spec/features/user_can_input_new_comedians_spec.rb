RSpec.describe 'a user visits comedians new page' do
  context 'they visit /comedians/new and add a new comedian' do
    before(:each) do
      visit '/comedians/new'
      fill_in "comedian[name]", with: "Dave Chappelle"
      fill_in "comedian[age]", with: "46"
      fill_in "comedian[hometown]", with: "Washington DC"
      click_button "Submit"
    end

    it 'should redirect to /comedians' do
      expect(current_path).to eq('/comedians')
    end

    it 'should show new info added to comedians page' do
      expect(page).to have_content('Dave Chappelle')
      expect(page).to have_content('Age: 46')
      expect(page).to have_content('Hometown: Washington DC')
    end
  end
end
