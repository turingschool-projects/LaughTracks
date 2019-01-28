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

      it 'should be invalid if missing an city' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 34)
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do

    describe '.average_age' do
      it 'should show average age of comedians ' do
        Comedian.create(name: "Bob Belcher", age: 43, city: "Portland")
        Comedian.create(name:"Tina Belcher", age: 12, city: "Portland")

        expect(Comedian.average_age).to eq(27.5)
      end
    end

    describe '.unique_cities' do
      it 'should show all the unique home towns of comedians' do
        Comedian.create(name: "Bob Belcher", age: 43, city: "Portland")
        Comedian.create(name:"Tina Belcher", age: 12, city: "Portland")
        Comedian.create(name:"Aziz Ansari", age: 34, city:"LA")

        expect(Comedian.unique_cities).to eq(["Portland", "LA"] )
      end
    end
  end
end
