RSpec.describe Artist do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        artist = Artist.create(formation_year: 1997, origin: "Red Lion, PA", album_count: 4)
        expect(artist).to_not be_valid
      end

      it 'should be invalid if missing a formation year' do
        artist = Artist.create(name: "Halestorm", origin: "Red Lion, PA", album_count: 4)
        expect(artist).to_not be_valid
      end

      it 'should be invalid if missing an origin city' do
        artist = Artist.create(name: "Halestorm", album_count: 4)
        expect(artist).to_not be_valid
      end

      it 'should be invalid if missing an album count' do
        artist = Artist.create(name: "Halestorm", origin: "Red Lion, PA")
        expect(artist).to_not be_valid
      end
    end
  end
end
