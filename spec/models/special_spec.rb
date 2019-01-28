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

  describe 'Class Methods' do
    before :each do
      Special.create(name: 'Special 1', runtime: 64, thumbnail: 'img', comedian_id: 1)
      Special.create(name: 'Special 2', runtime: 85, thumbnail: 'img', comedian_id: 1)
      Special.create(name: 'Special 3', runtime: 41, thumbnail: 'img', comedian_id: 1)
    end

    it 'should average the length of runtimes' do
      expected = 63
      actual = Special.average_runtime
      
      expect(actual).to eq(expected)
    end
  end
end
