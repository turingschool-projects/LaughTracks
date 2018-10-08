RSpec.describe 'as a visitor' do
  describe 'when i visit the new page' do

    before(:each) do
      @comedian_1 = Comedian.create(name: "John Mulaney", age: "36", city: "Chicago")
      @special_1_1 = @comedian_1.specials.create(name: "Kid Gorgeous at Radio City", run_time: "65", image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg")
    end

    it 'should allow me to create a new comedian' do
      visit '/comedians/new'

      # save_and_open_page

      name = "Adam Sandler"

      fill_in "comedian[name]", with: name
      fill_in "comedian[age]", with: 52
      fill_in "comedian[city]", with: "NYC"
      click_button "Create Comedian"

      #expect(current_path).to eq("/comedians/#{Comedian.last.id}")
      expect(page).to have_content(name)
    end
  end
end
