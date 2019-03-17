RSpec.describe Artist do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        artist = Artist.create(formation_year: 1997)
        expect(artist).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        artist = Artist.create(name: 'Halestorm')
        expect(artist).to_not be_valid
      end
    end
  end
end
