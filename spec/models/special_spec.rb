RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create(comedian_id: 1)
        expect(special).to_not be_valid
      end
      it 'should be invalid if missing a comedian id' do
        special = Special.create(name: "lol")
      end
    end
  end
end
