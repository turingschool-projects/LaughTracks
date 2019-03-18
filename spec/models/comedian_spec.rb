RSpec.describe Comedian, type: :model do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48, home_town: 'boston')
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg', home_town: 'boston')
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing a hometown' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 40)
        expect(comic).to_not be_valid
      end
    end
  end

    describe 'Class Methods' do
      it '.average_comedian_age' do
        Comedian.create(name: 'Ethan Grab', age: 10, home_town: 'Boston')
        Comedian.create(name: 'Ethan Grab', age: 20, home_town: 'Boston')
        Comedian.create(name: 'Ethan Grab', age: 30, home_town: 'Boston')
        Comedian.create(name: 'Ethan Grab', age: 40, home_town: 'Boston')

        expected = 25
        actual = Comedian.average_comedian_age

        expect(actual).to eq(expected)
      end

      it '.unique_home_town' do
        Comedian.create(name: 'Ethan Grab', age: 10, home_town: 'New York')
        Comedian.create(name: 'Ethan Grab', age: 10, home_town: 'Chicago')
        Comedian.create(name: 'Ethan Grab', age: 10, home_town: 'New Orleans')
        Comedian.create(name: 'Ethan Grab', age: 10, home_town: 'Boston')
        Comedian.create(name: 'Ethan Grab', age: 10, home_town: 'Lala Land')
        Comedian.create(name: 'Ethan Grab', age: 10, home_town: 'Lala Land')
        Comedian.create(name: 'Ethan Grab', age: 10, home_town: 'New Orleans')

        expected = 5
        actual = Comedian.unique_home_town.count

        expect(actual).to eq(expected)
      end
    end
end
