RSpec.describe Award do

  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.80,bottle_image: "http://")
        p1 = b1.awards.create(award_type: "Gold", year: 2013,image: "http://")

        expect(p1).to_not be_valid
      end

      it 'should be invalid if missing a award_type' do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.80,bottle_image: "http://")
        p1 = b1.awards.create(name: "SF awards",year: 2013,image: "http://")

        expect(p1).to_not be_valid
      end

      it 'should be invalid if missing a year' do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.80,bottle_image: "http://")
        p1 = b1.awards.create(name: "SF awards",award_type: "Gold",image: "http://")

        expect(p1).to_not be_valid
      end

      it 'should be invalid if missing a image' do
        b1 = Bourbon.create(name: "Bourbon", distillery: "Buffalo Trace" ,location: "Frankfort, KY" ,description: "tasty" ,proof: 90,expert_score: 91, avg_rating: 3.80,bottle_image: "http://")
        p1 = b1.awards.create(name: "SF awards",award_type: "Gold", year: 2013)

        expect(p1).to_not be_valid
      end
    end
  end
end
