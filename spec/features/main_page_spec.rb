RSpec.describe "a user visiting the main page" do
  before :each do
    @b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.80,bottle_image: "http://")
    @b2 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.84,bottle_image: "http://")
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
          expect(page).to have_content("Sort by:")
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
          expect(page).to have_content("Avg Proof: 85")
          expect(page).to have_content("Avg Expert Score: 90")
          expect(page).to have_content("Avg Rating: 3.82")
          expect(page).to have_content("Distillery Locations:")
        end
      end

      it "shows locations" do
        visit "/bourbons"

        expect(page).to have_content("Frankfort, KY")
        # expect(page).to have_link("KY")
      end

      # is this how it should work?
      xit "links to query that sorts by name" do
        visit "/bourbons"
        click_link("Name")
        expect(page).to have_xpath("/bourbons?sortby=name")
      end

      xit "links to query that selects bourbons by state" do
        visit "/bourbons"
        click_link("KY")
        expect(page).to have_xpath("/bourbons?selectby=KY")
      end

    end
  end
end
