RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48, city: 'New York')
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 35)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing a city' do
        comic = Comedian.create(name: 'Jerry Seinfeld', age: 52)
        expect(comic).to_not be_valid
      end
    end
  end
end
