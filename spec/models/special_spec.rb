RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do

      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a runtime' do
        special = Special.create(name: 'Special 1')
        expect(special).to_not be_valid
      end
    end
  end
end
