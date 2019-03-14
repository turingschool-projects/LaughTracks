RSpec.describe Bourbon do

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
  end


  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        bottle = Bourbon.create(location: 'Frankfort, KY')
        expect(bottle).to_not be_valid
      end
    end
  end

  #
  #     it 'should be invalid if missing a distillery' do
  #       bottle = Bourbon.create(location: 'Frankfort, KY')
  #       expect(bottle).to_not be_valid
  #     end
  #
  #     it 'should be invalid if missing a location' do
  #       bottle = Bourbon.create(distillery: "Buffalo Trace")
  #       expect(bottle).to_not be_valid
  #     end
  #
  #     it 'should be invalid if missing a description' do
  #       bottle = Bourbon.create(location: 'Frankfort, KY')
  #       expect(bottle).to_not be_valid
  #     end
  #
  #     it 'should be invalid if missing a proof' do
  #       bottle = Bourbon.create(location: 'Frankfort, KY')
  #       expect(bottle).to_not be_valid
  #     end
  #
  #     it 'should be invalid if missing an expert score' do
  #       bottle = Bourbon.create(location: 'Frankfort, KY')
  #       expect(bottle).to_not be_valid
  #     end
  #
  #     it 'should be invalid if missing an average rating' do
  #       bottle = Bourbon.create(location: 'Frankfort, KY')
  #       expect(bottle).to_not be_valid
  #     end
  #
  #     it 'should be invalid if missing a bottle image' do
  #       bottle = Bourbon.create(location: 'Frankfort, KY')
  #       expect(bottle).to_not be_valid
  #     end
  #   end
  # end
end
