RSpec.describe 'a visitor creates a new comedian' do
  describe 'as a visitor' do
    it 'should allow me to create a new comedian' do
      visit 'comedians/new'

      comedian = Comedian.create(name: "Funny Bones", age: 36, city: "Toronto")

      fill_in('comedian[name]', with: "Jim Gaffigan")
      fill_in('comedian[age]', with: 47)
      fill_in('comedian[city]', with: "Elgin")
      click_button "Submit"

      expect(current_path).to eq('/comedians')
      expect(page).to have_content('Jim Gaffigan')
    end
  end
end
