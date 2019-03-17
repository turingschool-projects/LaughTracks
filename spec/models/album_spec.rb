RSpec.describe Album do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        album = Album.create(release_date: "2018-07-27",
                             track_count: 12,
                             duration: "43:26")
        expect(album).to_not be_valid
      end

      it 'should be invalid if missing a release date' do
        album = Album.create(name: "Vicious",
                             track_count: 12,
                             duration: "43:26")
        expect(album).to_not be_valid
      end

      it 'should be invalid if missing a track count' do
        album = Album.create(name: "Vicious",
                             release_date: "2018-07-27",
                             duration: "43:26")
        expect(album).to_not be_valid
      end

      it 'should be invalid if missing a duration' do
        album = Album.create(name: "Vicious",
                             release_date: "2018-07-27",
                             track_count: 12)
        expect(album).to_not be_valid
      end
    end
  end

  describe 'Methods' do
    it 'returns photo filename as \'band_name/album_name\', lowercase with underscores instead of spaces and special characters removed' do
      album_1 = Album.create({ name: "Vicious", release_date: "2018-07-27", track_count: 12, duration: "43:26"})
      album_2 = Album.create({ name: "Into The Wild Life", release_date: "2015-04-14", track_count: 13, duration: "29:31"})
      album_2 = Album.create({ name: "The Strange Case Of...", release_date: "2012-04-10", track_count: 12, duration: "40:56"})
      album_2 = Album.create({ name: "Halestorm", release_date: "2009-04-28", track_count: 11, duration: "37:03"})

      expect(album_1.photo).to eq 'halestorm/vicious'
      expect(album_2.photo).to eq 'halestorm/into_the_wild_life'
      expect(album_3.photo).to eq 'halestorm/the_strange_case_of'
      expect(album_4.photo).to eq 'halestorm/halestorm'
    end
  end
end
