RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end

  describe "Class Methods" do
    describe ".average_run_time" do
      it "returns average run time of specials" do
        comic_1 = Comedian.create(name: 'Mitch Hedberg', age: 37)
        comic_2 = Comedian.create(name: 'Andrew Bueno', age: 33)

        comic_1.specials.create(name: "Hell Yeah", length: 65)
        comic_1.specials.create(name: "Funny thing", length: 75)
        comic_2.specials.create(name: "I am Funny", length: 50)
        comic_2.specials.create(name: "You are not Funny", length: 60)

        expect(Special.average_run_time).to eq(62.5)
      end
    end
  end
end
