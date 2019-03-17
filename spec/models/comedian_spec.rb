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
    
    describe 'Class Methods' do
      describe 'Calculations' do
        xit 'calculates average age' do
          Comedian.create(name: "Bill Hicks", age: 32, birthplace: "Houston, TX")
          Comedian.create(name: "Mitch Hedberg", age: 37, birthplace: "St. Paul, MN")
          Comedian.create(name: "George Carlin", age: 71, birthplace: "New York City, NY")
          expected = 93
          actual = Comedian.average_age

          expect(actual).to eq(expected)
        end
      end
    end

  end
end
