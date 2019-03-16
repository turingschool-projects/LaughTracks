RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create(runtime: 71,
                                 thumbnail_link: '1.jpg')

        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a runtime' do
        special = Special.create(name: 'Tom Segura: Disgraceful',
                                 thumbnail_link: '1.jpg')

        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a thumbnail_link' do
        special = Special.create(name: 'Tom Segura: Disgraceful',
                                 runtime: 71)

        expect(special).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe '.average_runtime' do
      it 'returns average run length of every TV special on the page' do
        c1 = Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
        c1.specials.create(name: 'Comedy Central: Mitch Hedberg', runtime: 10, thumbnail_link: '1.jpg')
        c2 = Comedian.create(name: 'Dave Chappelle', age: 45, hometown: 'Washington DC', headshot_link: '2.jpg')
        c2.specials.create(name: 'Dave Chappelle: Equanimity', runtime: 20, thumbnail_link: '2.jpg')

        expect(Special.average_runtime).to eq(15)
      end
    end

    describe '.count' do
      it 'returns count of all comedians specials' do
        tom = Comedian.create(name: 'Tom Segura', age: 39, hometown: 'Cincinnati', headshot_link: 'http://flapperscomedy.com/med/tomseguaheadshot.jpg')
        tom.specials.create(name: 'Tom Segura: Disgraceful', runtime: 71, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMGUyNTBiZjktMjk5Ni00Yzk3LTlkZTUtY2FiOTJiOGRhZWY3XkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')
        tom.specials.create(name: 'Tom Segura: Mostly Stories', runtime: 73, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BZWE2Nzc5N2YtOWM0OS00ZWVmLThhOTctNjNlNGI0NTQzMTU5XkEyXkFqcGdeQXVyMzAzODY0NzE@._V1_.jpg')
        mitch = Comedian.create(name: 'Mitch Hedberg', age: 37, hometown: 'St. Paul', headshot_link: 'https://upload.wikimedia.org/wikipedia/en/d/d5/Mitch_Hedberg.jpg')
        mitch.specials.create(name: 'Comedy Central: Mitch Hedberg', runtime: 23, thumbnail_link: 'https://m.media-amazon.com/images/M/MV5BMTQ0NDAyNDg5OV5BMl5BanBnXkFtZTgwMDUxNjEyMjE@._V1_.jpg')

        expect(Special.count).to eq(3)
      end
    end
  end
end
