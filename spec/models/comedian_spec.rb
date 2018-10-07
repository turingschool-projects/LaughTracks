RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        Comedian.create(name: 'Bill Burr', birthdate: (Date.parse('1/1/1968')).jd, city: 'Canton, MA')
        comic = Comedian.create(birthdate: (Date.parse('1/1/1968')).jd)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        Comedian.create(name: 'Bill Burr', birthdate: (Date.parse('1/1/1968')).jd, city: 'Canton, MA')
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end

      it 'calculates age' do
        bill = Comedian.create(name: 'Bill Burr', birthdate: (Date.parse('1/1/1969')).jd, city: 'Canton, MA')
        actual = bill.age
        expected = 49
        expect(actual).to eq(expected)
      end

      it 'gathers comedians average_age' do
        Comedian.create(name: 'Louis CK', birthdate: (Date.parse('12/9/1967')).jd, city: 'Washington, DC')
        Comedian.create(name: 'Jim Gaffigan', birthdate: (Date.parse('4/7/1966')).jd, city: 'Elgin, IL')
        Comedian.create(name: 'Bill Burr', birthdate: (Date.parse('10/6/1968')).jd, city: 'Canton, MA')
        Comedian.create(name: 'Mitch Hedberg', birthdate: (Date.parse('24/2/1968')).jd, city: 'St. Paul, MN')
        actual = Comedian.average_age
        expected = 51
        expect(actual).to eq(expected)
      end

      it 'gathers comedians by age' do
        Comedian.create(name: 'Louis CK', birthdate: (Date.parse('12/9/1967')).jd, city: 'Washington, DC')
        Comedian.create(name: 'Jim Gaffigan', birthdate: (Date.parse('4/7/1966')).jd, city: 'Elgin, IL')
        Comedian.create(name: 'Bill Burr', birthdate: (Date.parse('10/6/1968')).jd, city: 'Canton, MA')
        Comedian.create(name: 'Mitch Hedberg', birthdate: (Date.parse('24/2/1968')).jd, city: 'St. Paul, MN')
        actual = Comedian.by_age(50).count
        expected = 2
        expect(actual).to eq(expected)
      end

    end
  end
end
