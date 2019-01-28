RSpec.describe "as a visitor", type: :feature do
  describe "When I visit /comedians" do
    describe "at the top of the page" do
      it "should show a Statistics title" do
        Comedian.create!(name: "Bob Comedian", age:40, city:"New York").specials.create!(name:"Very special", run_time: 144)
        Comedian.create!(name: "Jenny Comedian", age:50, city:"LA")
        Comedian.create!(name: "Juan Comedian", age:42, city:"Denver")
        Comedian.create!(name: "Larry IDK", age:42, city:"New York")

        visit '/comedians'
        save_and_open_page

        within '#stats' do
          expect(page).to have_content("Statistics")
        end
      end

      it "should show average age of comedians" do
        Comedian.create!(name: "Bob Comedian", age:40, city:"New York").specials.create!(name:"Very special", run_time: 144)
        Comedian.create!(name: "Jenny Comedian", age:50, city:"LA").specials.create!(name:"Another special", run_time: 60)
        Comedian.create!(name: "Juan Comedian", age:42, city:"Denver")
        Comedian.create!(name: "Larry IDK", age:42, city:"New York")

        visit '/comedians'
        save_and_open_page

        within '#comedian-stats' do
          expect(page).to have_content("The average age of the comedians is 43.5")
        end
      end

      it "should show average run time for all specials" do
        Comedian.create!(name: "Bob Comedian", age:40, city:"New York").specials.create!(name:"Very special", run_time: 144)
        Comedian.create!(name: "Jenny Comedian", age:50, city:"LA").specials.create!(name:"Another special", run_time: 60)
        Comedian.create!(name: "Juan Comedian", age:42, city:"Denver")
        Comedian.create!(name: "Larry IDK", age:42, city:"New York")

        visit '/comedians'
        save_and_open_page

        within '#comedian-stats' do
          expect(page).to have_content("The average run time of all the specials is 102.0 minutes")
        end
      end

      it "should show all unique cities for the comedians" do
        Comedian.create!(name: "Bob Comedian", age:40, city:"New York").specials.create!(name:"Very special", run_time: 144)
        Comedian.create!(name: "Jenny Comedian", age:50, city:"LA").specials.create!(name:"Another special", run_time: 60)
        Comedian.create!(name: "Juan Comedian", age:42, city:"Denver")
        Comedian.create!(name: "Larry IDK", age:42, city:"New York")

        visit '/comedians'
        save_and_open_page

        within '#comedian-stats' do
          expect(page).to have_content("The comedians come from the following cities: New York, LA, Denver.")
        end
      end

      it "should show a special count for each comedian" do
        Comedian.create!(name: "Bob Comedian", age:40, city:"New York").specials.create!(name:"Very special", run_time: 144)
        Comedian.create!(name: "Jenny Comedian", age:50, city:"LA").specials.create!(name:"Another special", run_time: 60)
        Comedian.create!(name: "Juan Comedian", age:42, city:"Denver")
        Comedian.create!(name: "Larry IDK", age:42, city:"New York")

        visit '/comedians'
        save_and_open_page

        within '#comedian-stats' do
          expect(page).to have_content("Bob Comedian: 1")
          expect(page).to have_content("Jenny Comedian: 1")

        end

      end
    end

    describe "and when I search by age" do
      it "should only show the comedians that match that age" do
        Comedian.create!(name: "Bob Comedian", age:40, city:"New York").specials.create!(name:"Very special", run_time: 144)
        Comedian.create!(name: "Jenny Comedian", age:50, city:"LA").specials.create!(name:"Very special", run_time: 144)
        Comedian.create!(name: "Juan Comedian", age:42, city:"Denver").specials.create!(name:"Very special", run_time: 144)
        Comedian.create!(name: "Larry IDK", age:42, city:"New York").specials.create!(name:"Very special", run_time: 144)

        visit '/comedians?age=42'
        save_and_open_page

        expect(page).to have_content("Juan Comedian")
        expect(page).to have_content("Larry IDK")
        expect(page).to_not have_content("Bob Comedian")
        expect(page).to_not have_content("Jenny Comedian")
      end
    end

  end
end
