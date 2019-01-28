RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do

      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48, city: "San Diego, California")
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg', city: "San Diego, California")
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an city' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 48)
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe '.average_age' do
      it 'returns the average age of all comedians' do
        Comedian.create(name: "Mitch Hedberg", age: 48, city: "San Diego, California")
        Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, Pennsylvania")
        Comedian.create(name: "Ellen Degeneres", age: 60, city: "Metairie, Louisiana")

        expect(Comedian.average_age).to eq(49)
      end
    end

    describe '.get_cities' do
      it 'should give a list of comedian cities' do
        Comedian.create(name: "Mitch Hedberg", age: 48, city: "San Diego, California")
        Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, Pennsylvania")
        Comedian.create(name: "Ellen Degeneres", age: 60, city: "Metairie, Louisiana")

        expect(Comedian.get_cities).to eq("Metairie, Louisiana, <br>Philadelphia, Pennsylvania, <br>San Diego, California")
      end
    end

    describe '.find_comedians_by_age' do
      it 'should return all comedians of a certain age' do
        kumail = Comedian.create(name: "Kumail Nanjiani", age: 40, city: "Karachi, Pakistan")
        kevin = Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, Pennsylvania")
        mike = Comedian.create(name: "Mike Birbiglia", age: 40, city: "Shrewsbury, Massachussets")

        expect(Comedian.find_comedians_by_age(40)).to eq([kumail, mike])
        expect(Comedian.find_comedians_by_age(40)).to_not eq(kevin)
      end
    end
  end
end
