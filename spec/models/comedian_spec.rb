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
    it 'should has_many specials' do
      association = Comedian.reflect_on_association(:specials)
      expect(association.macro).to eq :has_many
    end
  end

  describe 'Class methods' do
    describe '.average_age' do
      it 'returns the average age for all comedians' do

        Comedian.create(name:'John Doe', age: 45, city: 'Westfield')
        Comedian.create(name:'Jane Doe', age: 51, city: 'Concord')

        average = Comedian.all.average(:age)

        expect(average).to eq(48)
      end
    end

    describe '.unique_cities' do
      it 'returns all unique cities for all comedians' do
        Comedian.create(name:'John Doe', age: 45, city: 'Westfield')
        Comedian.create(name:'Jane Doe', age: 51, city: 'Westfield')
        Comedian.create(name:'Sissy Spacey', age: 32, city: 'Concord')

        list = Comedian.all.select(:city).map(&:city).uniq

        expect(list).to eq(['Westfield', 'Concord'])
      end
    end
  end
end
