RSpec.describe Special do
  describe 'class methods' do
    it 'should show average of special lengths' do
      Special.create(name: "First special", length: 100, comedian_id: 1)
      Special.create(name: "Second special", length: 50, comedian_id: 1)
      expect(Special.average_length).to eq(75)
    end
  end

  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create(length: 1, comedian_id: 1)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a length' do
        special = Special.create(name: "First special", comedian_id: 1)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a comedian id' do
        special = Special.create(name: "First special", length: 10)
      end
    end
  end
end
