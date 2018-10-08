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

      it 'has_many specials' do
        association = described_class.reflect_on_association(:specials)

        expect(association.macro).to eq :has_many
      end
    end
  end
  describe 'Class Methods' do
    it '.average_age' do
      mitch = Comedian.create(name: 'Mitch Hedberg', age: 48, city: "Los Angeles")
      hannah = Comedian.create(name: 'Hannah Hart', age: 32, city: "Los Angeles")
      mamrie = Comedian.create(name: 'Mamrie Hard', age: 38, city: 'Los Angeles')

      average_age = Comedian.average_age.to_f.round(2)

      expect(average_age).to eq(39.33)
    end
  end

end
