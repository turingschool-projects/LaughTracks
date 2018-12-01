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
  describe 'Class methods' do
    it '.avg_age' do
      Comedian.create(name: 'kbglzd', age: 35)
      Comedian.create(name: 'idhsf', age: 40)
      Comedian.create(name: 'kbglzd', age: 45)

      expect(Comedian.avg_age).to eq(40)
    end

    it '.uniq_city' do
      Comedian.create(name: 'kbglzd', city: 'New York City', age: 35)
      Comedian.create(name: 'idhsf', city: 'New York City', age: 40)
      Comedian.create(name: 'kbglzd', city: 'Denver', age: 45)

      expect(Comedian.uniq_city).to eq(["New York City", "Denver"])
    end
    it '.list_comedians' do
      comic1 = Comedian.create(name: 'kbglzd', city: 'New York City', age: 35)
      comic2 = Comedian.create(name: 'idhsf', city: 'New York City', age: 40)
      comic3 = Comedian.create(name: 'kbglzd', city: 'Denver', age: 45)

      expect(Comedian.list_comedians(nil)).to eq([comic1, comic2, comic3])
    end
  end
  #write test for comedian.total_specials
end
