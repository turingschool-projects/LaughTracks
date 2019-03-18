RSpec.describe Comedian do

  before(:each) do
    c1 = Comedian.create(name: "Patton Oswalt", age: 50, city: "Waco")
    c2 = Comedian.create(name: "Whoopi Goldberg", age: 57, city: "New York City")
    c3 = Comedian.create(name: "Steve Martin", age: 40, city: "Brooklyn")
  end

  describe 'when a user clicks new' do
    it 'will redirect to a new page' do

      visit '/comedians'
      click_on("NEW")

      expect(current_path) == '/comedians/new'
    end
  end

  describe 'when a user fills out the form' do
    it 'will redirect back to comedians and add new comedian' do

      visit '/comedians/new'
      fill_in 'comedian[name]', with: "Mitch Hedberg"
      fill_in 'comedian[age]', with: 37
      fill_in 'comedian[city]', with: "St. Paul"
      click_button 'Submit'

      expect(current_path) == '/comedians'
      expect(page).to have_content "Mitch Hedberg"
    end
  end
end
