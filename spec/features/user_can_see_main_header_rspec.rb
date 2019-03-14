
  describe "bourbon index" do
    context "when I visit the bourbon index path" do
      it "shows a title of bourbon guide" do
        visit "/bourbons"

        within ".heading" do
          expect(page).to have_content("Bourbon Guide")
        end
      end

      it "shows a sort by section" do
        visit "/bourbons"

        within ".sortby" do
          expect(page).to have_content("Sort by:")
        end
      end

      it "shows a statistics section" do
        visit "/bourbons"

        within "div.heading-card" do
          expect(page).to have_content("Statistics")
        end
      end
    end
