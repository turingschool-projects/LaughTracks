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
    describe '.ids' do
      it 'returns array of comedian ids' do
        Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
        Comedian.create(name: 'Dave Chappelle', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')

        expect(Comedian.ids).to eq([1, 2])
      end
    end

    describe '.avererage_age' do
      it 'returns average age of all comedians' do
        Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
        Comedian.create(name: 'Dave Chappelle', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')

        expect(Comedian.average_age).to eq(46.5)
      end
    end

    describe '.all_hometowns' do
      it 'returns array of all hometowns' do
        Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
        Comedian.create(name: 'Dave Chappelle', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')

        expect(Comedian.all_hometowns).to eq(['St. Paul', 'Washington DC'])
      end

      it 'returns array of all hometowns with duplicates removed' do
        Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
        Comedian.create(name: 'Dave Chappelle', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')
        Comedian.create(name: 'Hannibal Buress', age: 36, hometown: 'Chicago', headshot_link: '3.jpg')
        Comedian.create(name: 'John Mulaney', age: 36, hometown: 'Chicago', headshot_link: '4.jpg')

        count_of_chicagos = Comedian.all_hometowns.count("Chicago")

        expect(count_of_chicagos).to eq(1)
      end
    end

    describe '.all_hometowns_list' do
      it 'returns list of all hometowns as a string' do
        Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
        Comedian.create(name: 'Dave Chappelle', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')

        expect(Comedian.all_hometowns_list).to eq('St. Paul, Washington DC')
      end
    end
  end
end
