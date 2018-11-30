RSpec.describe "As a user" do
  describe "when I visit /comedians/new" do
    it "I can create a new comedian" do
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
