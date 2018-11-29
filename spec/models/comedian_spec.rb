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

  describe "Class Methods" do
    describe ".average_age" do
      it "returns average age of comedians" do
        comic_1 = Comedian.create(name: 'Mitch Hedberg', age: 37)
        comic_2 = Comedian.create(name: 'Andrew Bueno', age: 33)
        comic_3 = Comedian.create(name: 'Martin Short', age: 68)

        expect(Comedian.average_age).to eq(46)
      end
    end
  end
end
