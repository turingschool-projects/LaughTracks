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
  end
  describe 'Class Methods' do
    before :each do
      @comedian_1 = Comedian.create(name: 'Comedian 1', age: 31, city: 'New York')
      @comedian_2 = Comedian.create(name: 'Comedian 2', age: 42, city: 'New York')
      @comedian_3 = Comedian.create(name: 'Comedian 3', age: 53, city: 'Los Angeles')
      @comics = [@comedian_1, @comedian_2, @comedian_3]
    end
    it 'should average all ages' do
      expected = 42
      actual = Comedian.average_age

      expect(actual).to eq(expected)
    end

    it 'should list unique cities' do
      expected = ['New York', 'Los Angeles']

      expect(Comedian.uniq_cities).to eq(expected)
    end

    it 'should find comedians by age' do
      expect(Comedian.where(age: 42))
    end

  end
end
