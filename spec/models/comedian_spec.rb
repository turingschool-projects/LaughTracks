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

    describe '.average_specials_runtime' do
      it 'returns average run length of every TV special on the page' do
        c1 = Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
        c1.specials.create(name: 'Comedy Central: Mitch Hedberg', runtime: 10, thumbnail_link: '1.jpg')
        c2 = Comedian.create(name: 'Dave Chappelle', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')
        c2.specials.create(name: 'Dave Chappelle: Equanimity', runtime: 20, thumbnail_link: '2.jpg')

        expect(Comedian.average_specials_runtime).to eq(15)
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

    describe '.specials_count' do
      it 'returns count of all comedians specials' do
        tom = Comedian.create(name: 'Tom Segura', age: 39, hometown: 'Cincinnati', headshot_link: 'http://flapperscomedy.com/med/tomseguaheadshot.jpg')
        tom.specials.create(name: 'Tom Segura: Disgraceful', runtime: 71, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMGUyNTBiZjktMjk5Ni00Yzk3LTlkZTUtY2FiOTJiOGRhZWY3XkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')
        tom.specials.create(name: 'Tom Segura: Mostly Stories', runtime: 73, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BZWE2Nzc5N2YtOWM0OS00ZWVmLThhOTctNjNlNGI0NTQzMTU5XkEyXkFqcGdeQXVyMzAzODY0NzE@._V1_.jpg')
        mitch = Comedian.create(name: 'Mitch Hedberg', age: 37, hometown: 'St. Paul', headshot_link: 'https://upload.wikimedia.org/wikipedia/en/d/d5/Mitch_Hedberg.jpg')
        mitch.specials.create(name: 'Comedy Central: Mitch Hedberg', runtime: 23, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMTQ0NDAyNDg5OV5BMl5BanBnXkFtZTgwMDUxNjEyMjE@._V1_.jpg')

        expect(Comedian.specials_count).to eq(3)
      end
    end
  end
end
