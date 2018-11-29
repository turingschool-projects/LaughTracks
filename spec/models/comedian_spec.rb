RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end

  describe "class methods" do
    it "average_age" do
      comedian_1 = Comedian.create(name: "John Mulaney", age: 36, hometown: "Chicago, IL")
      comedian_2 = Comedian.create(name: "Mitch Hedberg", age: 20, hometown: "Saint Paul, MN")
      actual = Comedian.all.average_age

      expect(actual).to eq(28)
    end

    it "unique_hometowns" do
      comedian_1 = Comedian.create(name: "John Mulaney", age: 36, hometown: "Chicago, IL")
      comedian_2 = Comedian.create(name: "Mitch Hedberg", age: 20, hometown: "Saint Paul, MN")
      actual = Comedian.unique_hometowns.join(" ")

      expect(actual).to eq("Chicago, IL Saint Paul, MN")
    end
  end
end
