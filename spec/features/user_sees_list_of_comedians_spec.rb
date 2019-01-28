RSpec.describe "as a visitor", type: :feature do
  describe "When I visit /comedians" do

    it "should show all comedians" do

      Comedian.create!(name: "Bob Comedian", age:40, city:"New York").specials.create!(name:"Very special", run_time: 144)
      Comedian.create!(name: "Jenny Comedian", age:50, city:"LA")
      Comedian.create!(name: "Juan Comedian", age:42, city:"Denver")
      Comedian.create!(name: "Larry IDK", age:42, city:"New York")

      visit '/comedians'
      save_and_open_page

      expect(page).to have_content("Bob Comedian")
      expect(page).to have_content("Jenny Comedian")
      expect(page).to have_content("Juan Comedian")
      expect(page).to have_content("Larry IDK")
    end

      it "should show comedians info in their respective section" do

        bob = Comedian.create(name: "Bob Comedian", age:40, city:"New York").specials.create!(name:"Very special", run_time: 144)
        jenny = Comedian.create(name: "Jenny Comedian", age:50, city:"LA")
        juan = Comedian.create(name: "Juan Comedian", age:42, city:"Denver")
        larry = Comedian.create(name: "Larry IDK", age:42, city:"New York")

        visit '/comedians'
        save_and_open_page


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
