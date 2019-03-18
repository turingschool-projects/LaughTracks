RSpec.describe Special do

  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create(runtime:69, comedian_id: 5)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a runtime' do
        special = Special.create(name:"Some guy tells jokes", comedian_id: 5)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a comedian_id' do
        special = Special.create(name:"Some guy tells jokes", runtime: 5)
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Instance Methods' do
    describe 'abbreviation' do
      it 'should make special name 5 characters and downcase' do
        special = Special.create(name:"Some guy tells jokes", runtime: 5)
        expect(special.abbreviation).to eq('some ')
      end
    end
  end
end
