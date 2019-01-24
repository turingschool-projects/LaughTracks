RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a title' do
        special = Special.create(run_time: 60, image_url: 'https://example.com', comedian_id: 1)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a run_time' do
        special = Special.create(title: 'John Mulaney: New in Town', image_url: 'https://example.com', comedian_id: 1)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing an image_url' do
        special = Special.create(title: 'John Mulaney: New in Town', run_time: 60, comedian_id: 1)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a comedian_id' do
        special = Special.create(title: 'John Mulaney: New in Town', run_time: 60, image_url: 'https://example.com')
        expect(special).to_not be_valid
      end
    end
  end
end
