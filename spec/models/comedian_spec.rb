RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg', hometown: 'St. Paul', headshot_link: '1.jpg')
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing a hometown' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 48, headshot_link: '1.jpg')
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing a headshot_link' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul')
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe '.avererage_age' do
      it 'returns average age of all comedians' do
        Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
        Comedian.create(name: 'Dave Chappelle', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')

        expect(Comedian.average_age).to eq(46.5)
      end
    end
  end
end
