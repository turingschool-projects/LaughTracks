RSpec.describe "as a visitor", type: :feature do
  describe "When I visit /comedians" do

    it "should show all comedians" do

      bob = Comedian.create!(name: "Bob Comedian", age:40, city:"New York")
      jenny = Comedian.create!(name: "Jenny Comedian", age:50, city:"LA")
      juan = Comedian.create!(name: "Juan Comedian", age:42, city:"Denver")
      larry = Comedian.create!(name: "Larry IDK", age:42, city:"New York")
      very = Special.create!(name:"Very special", run_time: 144)

      visit '/comedians'
      save_and_open_page

      expect(page).to have_content("Bob Comedian")
      expect(page).to have_content("Jenny Comedian")
      expect(page).to have_content("Juan Comedian")
      expect(page).to have_content("Larry IDK")
    end

      it "should show comedians info in their respective section" do

      within "#comedian-#{bob.id}" do
        expect(page).to have_content("Bob Comedian")
        expect(page).to have_content("40")
        expect(page).to have_content("New York")
      end

      within "#comedian-#{jenny.id}" do
        expect(page).to have_content("Jenny Comedian")
        expect(page).to have_content("50")
        expect(page).to have_content("LA")
      end

      within "#comedian-#{juan.id}" do
        expect(page).to have_content("Juan Comedian")
        expect(page).to have_content("42")
        expect(page).to have_content("Denver")
      end

      within "#comedian-#{larry.id}" do
        expect(page).to have_content("Larry IDK")
        expect(page).to have_content("42")
        expect(page).to have_content("New York")
      end
    end



  end

end
