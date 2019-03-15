RSpec.describe "a user visiting the main page" do
  before :each do
    @b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.80,bottle_image: "http://")
    @b2 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.84,bottle_image: "http://")
    @b3 = Bourbon.create(name: "Bourbon2", distillery: "Buffalo Trace" ,location: "Frankfort, CO" ,description: "tasty" ,proof: 95,expert_score: 87, avg_rating: 3.2,bottle_image: "http://")
  end

  describe "bourbon index" do
    context "when I visit the bourbon index path" do
      it "shows a title of bourbon guide" do
        visit "/bourbons"

        within "header" do
          expect(page).to have_content("Bourbon Guide")
        end
      end

      it "shows a sort by section" do
        visit "/bourbons"

        within ".sortby" do
          expect(page).to have_content("Sort all by:")
        end
      end

      it "show five sort options" do
        visit "/bourbons"
        within ".sortby" do
          expect(page).to have_content("Name")
          expect(page).to have_content("Distillery")
          expect(page).to have_content("Proof")
          expect(page).to have_content("Expert Score")
          expect(page).to have_content("Avg Rating")
        end
      end

      it "shows a statistics section" do
        visit "/bourbons"

        expect(page).to have_content("Statistics")
      end

      it "shows four statistics" do
        visit "/bourbons"

        within ".stats" do
          expect(page).to have_content("Avg Proof: 88.3")
          expect(page).to have_content("Avg Expert Score: 89")
          expect(page).to have_content("Avg Rating: 3.61")
          expect(page).to have_content("Distillery Locations:")
        end
      end

      it "shows locations" do
        visit "/bourbons"

        expect(page).to have_content("Frankfort, KY")
        expect(page).to have_button("KY")
      end

      # is this how it should work?
      xit "links to query that sorts by name" do
        visit "/bourbons"
        click_link("Name")
        expect(page).to have_xpath("/bourbons?sortby=name")
      end

      it "links to query that selects bourbons by state" do
        visit "/bourbons"
        click_button("KY")

        expect(page).to have_content("Avg Proof: 85.0")
        # idk why
      end

    end
  end
end
