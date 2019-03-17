RSpec.describe "a user visiting the main page" do
  before :each do
    @b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.80,bottle_image: "http://www.buffalotracedistillery.com/sites/default/files/Weller_CYPB_750ml_front_LoRes.png")
    @b2 = Bourbon.create(name: "1Bourbon", distillery: "1Buffalo Trace" ,location: "Dankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.84,bottle_image: "http://")
    @b3 = Bourbon.create(name: "Bourbon2", distillery: "Buffalo Trace" ,location: "Frankfort, CO" ,description: "tasty" ,proof: 95,expert_score: 87, avg_rating: 3.2,bottle_image: "http://")
    @p1 = @b1.awards.create(name: "SF awards",award_type: "Gold", year: 2013,image: "http://")
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
          expect(page).to have_button("Name")
          expect(page).to have_button("Distillery")
          expect(page).to have_button("Proof")
          expect(page).to have_button("Expert_Score")
          expect(page).to have_button("Avg_Rating")
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

      it "links to query that sorts by name" do
        visit "/bourbons"
        click_button("Name")
        within first(".bourbon-card") do
          expect(page).to have_content("1Bourbon")
        end
      end

      it "links to query that sorts by distillery" do
        visit "/bourbons"
        click_button("Distillery")
        within first(".bourbon-card") do
          expect(page).to have_content("1Bourbon")
        end
      end

      it "links to query that sorts by proof" do
        visit "/bourbons"
        click_button("Proof")
        within first(".bourbon-card") do
          expect(page).to have_content("Bourbon")
        end
      end

      it "links to query that sorts by expert_score" do
        visit "/bourbons"
        click_button("Expert_Score")
        within first(".bourbon-card") do
          expect(page).to have_content("Bourbon")
        end
      end

      it "links to query that sorts by expert_score" do
        visit "/bourbons"
        click_button("Avg_Rating")
        within first(".bourbon-card") do
          expect(page).to have_content("1Bourbon")
        end
      end

      it "links to query that selects bourbons by state" do
        visit "/bourbons"
        click_button("KY")

        expect(page).to have_content("Avg Proof: 85.0")
      end

      it "shows the cards for bourbon" do

        visit "/bourbons"
        expect(page).to have_css("div.bourbon-card", count:3)
      end

      it "selects based on state" do

        visit "/bourbons"
        click_button("KY")
        expect(page).to have_css("div.bourbon-card", count:2)
      end
    end

    context "in the bourbon cards" do
      it "shows the name of the bourbon" do
        visit "/bourbons"
        within first(".bourbon-card") do
          expect(page).to have_content("Bourbon")
        end
      end

      it "shows the bottle of bourbon" do
        visit "/bourbons"
        within first(".bourbon-card") do
          expect(page).to have_css("img")
        end
      end

      it "shows the distillery" do
        visit "/bourbons"
        within first(".bourbon-card") do
          expect(page).to have_content("Buffalo Trace")
        end
      end

      it "shows the proof" do
        visit "/bourbons"
        within first(".bourbon-card") do
          expect(page).to have_content("Proof: 90")
        end
      end

      it "shows the expert score" do
        visit "/bourbons"
        within first(".bourbon-card") do
          expect(page).to have_content("Expert Score: 91")
        end
      end

      it "shows the average rating" do
        visit "/bourbons"
        within first(".bourbon-card") do
          expect(page).to have_content("Average Rating: 3.8")
        end
      end

      it "shows the description" do
        visit "/bourbons"
        within first(".bourbon-card") do
          expect(page).to  have_content("tasty")
        end
      end

      it "shows the awards" do
        visit "/bourbons"
        within first(".bourbon-card") do
          expect(page).to have_css(".award-card", count:1)
        end
      end

      it "shows the award information" do
        visit "/bourbons"
        within first".award-card" do
          expect(page).to have_content("2013 Gold SF awards")
        end
      end

      it "shows the award image" do
        visit "/bourbons"
        within first".award-card" do
          expect(page).to have_css("img")
        end
      end

    end
  end

end
