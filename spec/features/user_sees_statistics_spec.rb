RSpec.describe "As a user" do
  describe "when I visit /comedians" do
    it "should see a Statistics section" do

      visit '/comedians'

      within("#statistics") do
        expect(page).to have_content("Statistics")
      end
    end
  end
end
