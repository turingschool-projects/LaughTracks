RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg', city: "Saint Paul")
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing a city' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 48)
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe '.average_age' do
      it 'returns average age of all comedians' do
        Comedian.create(name: 'John Mulaney', age: 36, city: 'Chicago')
        Comedian.create(name: 'Bill Burr', age: 50, city: 'Canton')
        expect(Comedian.average_age(nil)).to eq(43)
      end
    end
  end
end
