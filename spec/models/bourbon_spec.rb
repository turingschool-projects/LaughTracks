RSpec.describe Bourbon, type: :model do

  describe "Class Methods" do
    describe ".avg_proof" do
      it "averages the proof for all bourbons" do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.84,bottle_image: "http://")
        b2 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 91, avg_rating: 3.84,bottle_image: "http://")

        expect(Bourbon.avg_proof).to eq(85.0)
      end
    end

    describe ".avg_expert_score" do
      it "averages the expert score for all bourbons" do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.84,bottle_image: "http://")
        b2 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.84,bottle_image: "http://")

        expect(Bourbon.avg_expert_score).to eq(90.0)
      end
    end

    describe ".avg_avg_rating" do
      it "averages the average rating for all bourbons" do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 4.0,bottle_image: "http://")
        b2 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")

        expect(Bourbon.avg_avg_rating).to eq(3.5)
      end
    end

    describe ".cities" do
      it "returns an array of the unique cities" do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Dankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 4.0,bottle_image: "http://")
        b2 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")
        b3 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, CO" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")

        expect(Bourbon.cities).to eq(["Dankfort, KY", "Frankfort, KY", "Frankfort, CO"])
      end
    end

    # This one might be hard...unless I group by twice?
    describe ".sort_location" do
      it "creats a list of all bourbons sorted by location" do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 4.0,bottle_image: "http://")
        b2 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")
        b3 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, CO" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")

        expect(Bourbon.sort_location).to eq([b3,b1,b2])
      end
    end

    describe ".select_state(state)" do
      it "creats a list of all bourbons for a chosen state" do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 4.0,bottle_image: "http://")
        b2 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")
        b3 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, CO" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")

        expect(Bourbon.select_state("KY")).to eq([b1, b2])
      end
    end

    describe ".sort_distillery" do
      it "creates a list of all bourbons sorted by distillery" do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 4.0,bottle_image: "http://")
        b2 = Bourbon.create(name: "Bourbon", distillery: "Ruffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")
        b3 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, CO" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")

        expect(Bourbon.sort_distillery).to eq([b1, b3, b2])
      end
    end

    describe ".sort_proof" do
      it "creates a list of all bourbons sorted by proof ascending" do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 4.0,bottle_image: "http://")
        b2 = Bourbon.create(name: "Bourbon", distillery: "Ruffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")
        b3 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, CO" ,description: "tasty" ,proof: 95,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")

        expect(Bourbon.sort_distillery).to eq([b2, b1, b3])
      end
    end

    describe ".sort_expert_score" do
      it "creates a list of all bourbons sorted by expert score descending" do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 4.0,bottle_image: "http://")
        b2 = Bourbon.create(name: "Bourbon", distillery: "Ruffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")
        b3 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, CO" ,description: "tasty" ,proof: 95,expert_score: 87, avg_rating: 3.0,bottle_image: "http://")

        expect(Bourbon.sort_distillery).to eq([b3, b2, b1])
      end
    end

    describe ".sort_avg_rating" do
      it "creates a list of all bourbons sorted by avg rating descending" do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 4.0,bottle_image: "http://")
        b2 = Bourbon.create(name: "Bourbon", distillery: "Ruffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 80,expert_score: 89, avg_rating: 3.0,bottle_image: "http://")
        b3 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, CO" ,description: "tasty" ,proof: 95,expert_score: 87, avg_rating: 3.2,bottle_image: "http://")

        expect(Bourbon.sort_distillery).to eq([b1, b3, b2])
      end
    end
  end

  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        bottle = Bourbon.create(distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.84,bottle_image: "http://")
        expect(bottle).to_not be_valid
      end

      it 'should be invalid if missing a distillery' do
        bottle = Bourbon.create(name: "Bourbon" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.84,bottle_image: "http://")
        expect(bottle).to_not be_valid
      end

      it 'should be invalid if missing a location' do
        bottle = Bourbon.create(name: "Bourbon" ,distillery: "Buffalo Trace" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.84,bottle_image: "http://")
        expect(bottle).to_not be_valid
      end

      it 'should be invalid if missing a description' do
        bottle = Bourbon.create(name: "Bourbon" ,distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,proof: 90,expert_score: 91, avg_rating: 3.84,bottle_image: "http://")
        expect(bottle).to_not be_valid
      end

      it 'should be invalid if missing a proof' do
        bottle = Bourbon.create(name: "Bourbon" ,distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,expert_score: 91, avg_rating: 3.84,bottle_image: "http://")
        expect(bottle).to_not be_valid
      end

      it 'should be invalid if missing an expert score' do
        bottle = Bourbon.create(name: "Bourbon" ,distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90, avg_rating: 3.84,bottle_image: "http://")
        expect(bottle).to_not be_valid
      end

      it 'should be invalid if missing an average rating' do
        bottle = Bourbon.create(name: "Bourbon" ,distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, bottle_image: "http://")
        expect(bottle).to_not be_valid
      end

      it 'should be invalid if missing a bottle image' do
        bottle = Bourbon.create(name: "Bourbon" ,distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.84)
        expect(bottle).to_not be_valid
      end
    end
  end
end
