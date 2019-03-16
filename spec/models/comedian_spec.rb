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

        expected_1 = ['St. Paul', 'Washington DC']
        expected_2 = ['Washington DC', 'St. Paul']

        expect(Comedian.all_hometowns).to eq(expected_1).or(eq(expected_2))
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

        expected_1 = 'St. Paul, Washington DC'
        expected_2 = 'Washington DC, St. Paul'

        expect(Comedian.all_hometowns_list).to eq(expected_1).or(eq(expected_2))
      end
    end

    describe '.sorted_by_name' do
      it 'returns all comedians sorted by name' do
        c1 = Comedian.create(name: 'C', age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
        c2 = Comedian.create(name: 'B', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')
        c3 = Comedian.create(name: 'A', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')

        expect(Comedian.sorted_by_name).to eq([c3, c2, c1])
      end
    end

    describe '.sorted_by_city' do
      it 'returns all comedians sorted by hometown city' do
        c1 = Comedian.create(name: 'C', age: 48, hometown: 'X', headshot_link: '1.jpg')
        c2 = Comedian.create(name: 'B', age: 45, hometown: 'Z', headshot_link: '2.jpg')
        c3 = Comedian.create(name: 'A', age: 45, hometown: 'A', headshot_link: '2.jpg')

        expect(Comedian.sorted_by_city).to eq([c3, c1, c2])
      end
    end
  end
end
