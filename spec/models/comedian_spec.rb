RSpec.describe Comedian do
  describe 'Validations' do
    it 'should be invalid if missing a name' do
      comic = Comedian.new(age: 48, birthplace: 'Seattle')
      expect(comic).to_not be_valid
    end

    it 'should be invalid if missing an age' do
      comic = Comedian.new(name: 'Bill Burr', birthplace: 'Canton, MA')
      expect(comic).to_not be_valid
    end

    it 'should ge invalid if missing a city' do
      comic = Comedian.new(name: 'Bill Burr', age: 50)

      expect(comic).to_not be_valid
    end
  end
end
