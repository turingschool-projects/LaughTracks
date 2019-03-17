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
        it 'calculates average age' do
          Comedian.create(name: "Bill Hicks", age: 32, birthplace: "Houston, TX")
          Comedian.create(name: "Mitch Hedberg", age: 37, birthplace: "St. Paul, MN")
          Comedian.create(name: "George Carlin", age: 71, birthplace: "New York City, NY")
          expected = 47
          actual = Comedian.average_age

          expect(actual).to eq(expected)
        end
      end

      describe 'Attribute Grouping' do
        it 'should list all unique hometowns' do
          Comedian.create(name: "Bill Hicks", age: 32, birthplace: "Houston")
          Comedian.create(name: "Mitch Hedberg", age: 37, birthplace: "St. Paul")
          Comedian.create(name: "George Carlin", age: 71, birthplace: "New York City")
          Comedian.create(name: "Ari Shaffir", age: 44, birthplace: "New York City", image_url: "https://i2.wp.com/www.foodrepublic.com/wp-content/uploads/2016/02/Ari-Shaffir-TINH-1.jpg?resize=1400%2C2100")
          expected = 'Houston, New York City, St. Paul'
          actual = Comedian.unique_hometowns

          expect(actual).to eq(expected)
        end
      end
    end

  end
end
