RSpec.describe "As a user" do
  describe "when I visit /comedians/new" do
    it "I can create a new comedian" do
      comedian_1 = Comedian.create(name: "John Mulaney", age: 36, hometown: "Chicago, IL")
      comedian_2 = Comedian.create(name: "Mitch Hedberg", age: 36, hometown: "Saint Paul, MN")
      comedian_2.specials.create(title: "Comedy Central Presents: Mitch Hedberg", runtime: 30, image_file: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGHGPBMGUNy3WnCVWPyiCQxtRZ_G4KC3Cjv1JiCmsq6rM6lk3q-g")
      
      visit '/comedians/new'

      fill_in "comedian[name]", with: "John Doe"
      fill_in "comedian[age]", with: 25
      fill_in "comedian[hometown]", with: "Nowhere"
      click_button "Submit"

      expect(current_path).to eq('/comedians')

      expect(page).to have_content("John Doe")
      expect(page).to have_content("25")
      expect(page).to have_content("Nowhere")
    end
  end
end
