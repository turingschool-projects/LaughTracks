RSpec.describe "as a visitor", type: :feature do
  describe "When I visit /comedians" do

    it "should show all comedians" do

      Comedian.create!(name: "Bob Comedian", age:40, city:"New York")
      Comedian.create!(name: "Jenny Comedian", age:50, city:"LA")
      Comedian.create!(name: "Juan Comedian", age:42, city:"Denver")
      Comedian.create!(name: "Larry IDK", age:42, city:"New York")
      Special.create!(name:"Very special", run_time: 144)

      visit '/comedians'
      save_and_open_page

      within '#page_title' do
        expect(page).to have_content("Comedians")
      end
    end
  end
end
