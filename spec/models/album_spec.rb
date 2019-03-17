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
end
