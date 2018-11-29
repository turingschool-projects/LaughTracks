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
        Comedian.create(name: 'Mitch Hedberg', age: 37)
        Comedian.create(name: 'Andrew Bueno', age: 33)
        Comedian.create(name: 'Martin Short', age: 68)

        expect(Comedian.average_age).to eq(46)
      end
    end
    describe ".list_unique_cities" do
      it "returns a list of unique cities for comedians" do
        Comedian.create(name: 'Mitch Hedberg', age: 37, city: "Los Angeles")
        Comedian.create(name: 'Beck Bennett', age: 34, city: "New York City")
        Comedian.create(name: 'Kyle Mooney', age: 34, city: "New York City")
        Comedian.create(name: 'Andrew Bueno', age: 33, city: "Denver")

        expected = ["Los Angeles", "New York City", "Denver"]

        expect(Comedian.list_of_unique_cities).to eq(expected)
      end
    end
  end
end
