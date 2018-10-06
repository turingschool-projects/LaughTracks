RSpec.describe 'as a visitor' do
  describe 'when i visit the new page' do

    it 'should allow me to create a new comedian' do
      visit '/comedians/new'

      # save_and_open_page

      fill_in "comedian[name]", with: "Adam Sandler"
      fill_in "comedian[age]", with: 52
      fill_in "comedian[city]", with: "NYC"
      click_button "Submit"

      expect(current_path).to eq("/comedians/#{Comedian.last.id}")
      expect(page).to have_content(name)
    end
  end
end
