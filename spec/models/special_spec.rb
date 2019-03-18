RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create(length: 100, thumbnail: 'asdkj')
        expect(special).to_not be_valid
      end
      it 'should be invalid if missing a length' do
        special = Special.create(name: 'Ethan Grab', thumbnail: 'asdkj')
        expect(special).to_not be_valid
      end
      it 'should be invalid if missing a thumbnail' do
        special = Special.create(name: 'Ethan Grab', length: 100)
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    it '.specials_for_comedian_set' do
      c1 = Comedian.create(name: 'Ethan Grab', age: 10, home_town: 'Boston')
      c2 = Comedian.create(name: 'Ethan Grab', age: 20, home_town: 'Boston')
      c3 = Comedian.create(name: 'Ethan Grab', age: 30, home_town: 'Boston')
      c4 = Comedian.create(name: 'Ethan Grab', age: 40, home_town: 'Boston')
      s1 = c1.specials.create(name: 'Ethan Grab: Disgraceful', length: 71, thumbnail: 'https://m.media-amazon.com/images/M/MV5BMGUyNTBiZjktMjk5Ni00Yzk3LTlkZTUtY2FiOTJiOGRhZWY3XkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')
      s2 = c1.specials.create(name: 'Ethan Grab: Test', length: 81, thumbnail: 'https://m.media-amazon.com/images/M/MV5BMGUyNTBiZjktMjk5Ni00Yzk3LTlkZTUtY2FiOTJiOGRhZWY3XkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')
      s3 = c2.specials.create(name: 'Tom Segura: Disgraceful', length: 71, thumbnail: 'https://m.media-amazon.com/images/M/MV5BMGUyNTBiZjktMjk5Ni00Yzk3LTlkZTUtY2FiOTJiOGRhZWY3XkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg')
      comedian_set = Comedian.where(age: 10)
      expected = [s1, s2]
      actual = Special.specials_for_comedian_set(comedian_set)

      expect(actual).to eq(expected)
    end
  end
end
