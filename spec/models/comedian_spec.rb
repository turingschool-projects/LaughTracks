RSpec.describe Comedian do
  describe 'class methods' do
    it 'should show average comedian age' do
      Comedian.create(name: 'Test 1', age: 40, city: "Testerville")
      Comedian.create(name: 'Test 2', age: 20, city: "Testerville")
      expect(Comedian.average_age).to eq(30)
    end

    it 'show only show unique cities' do
      Comedian.create(name: 'Test 1', age: 40, city: "Testerville")
      Comedian.create(name: 'Test 2', age: 30, city: "Testerville")
      Comedian.create(name: 'Test 3', age: 20, city: "New York")
      expect(Comedian.unique_cities).to eq("Testerville, New York")
    end
  end

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
end
