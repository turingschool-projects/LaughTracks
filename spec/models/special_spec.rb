RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create(comedian_id: 2, run_time_minutes: 12, image_url: 'sads')
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a comedian_id' do
        special = Special.create(name: 'Fluffy and Proud', run_time_minutes: 12, image_url: 'sads')
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a run_time' do
        special = Special.create(name: 'Fluffy and Proud', comedian_id: 2, image_url: 'sads')
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing an image_url' do
        special = Special.create(name: 'Fluffy and Proud', comedian_id: 2, run_time_minutes: 60)
        expect(special).to_not be_valid
      end
    end
  end
end
