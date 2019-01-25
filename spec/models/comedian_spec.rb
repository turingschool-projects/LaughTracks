RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48, born: 'St.Paul')
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg', born: 'St. Paul')
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing city born' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 37)
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe '.average_age' do
      it 'returns the average age of all comedians' do
        Comedian.create(name: 'Mitch Hedberg', born: 'St. Paul', age: 10)
        Comedian.create(name: 'Mitch Hedberg', born: 'St. Paul', age: 20)
        Comedian.create(name: 'Mitch Hedberg', born: 'St. Paul', age: 30)

        expect(Comedian.average_age).to eq(20)
      end
    end

    describe '.unique_cities' do
      it 'returns a list of the unique cities comedians were born in' do
        Comedian.create(name: 'Mitch Hedberg', born: 'St. Paul', age: 10)
        Comedian.create(name: 'Mitch Hedberg', born: 'St. Paul', age: 20)
        Comedian.create(name: 'Mitch Hedberg', born: 'Atlanta', age: 30)

        expect(Comedian.unique_cities).to eq(['St. Paul', 'Atlanta'])
      end
    end

    describe '.total_specials' do
      it 'returns a count of a comedians total specials' do
        comedian = Comedian.create(name: 'Mitch Hedberg', born: 'St. Paul', age: 10)
        comedian.specials.create(name: "spec 1", length: 30)
        comedian.specials.create(name: "spec 2", length: 30)
        comedian.specials.create(name: "spec 3", length: 30)

        expect(Comedian.total_specials).to eq(3)
      end
    end
  end
end
