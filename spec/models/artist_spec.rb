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

  describe 'Methods' do
    it 'returns photo filename as band name, lowercase with underscores instead of spaces' do
      halestorm = Artist.create(name: "Halestorm", formation_year: 1997, origin: "Red Lion, PA", album_count: 4)
      glitch_mob = Artist.create(name: "The Glitch Mob", formation_year: 2006, origin: "Los Angeles, CA", album_count: 5)

      expect(halestorm.photo).to eq 'halestorm'
      expect(glitch_mob.photo).to eq 'the_glitch_mob'
    end
  end
end
