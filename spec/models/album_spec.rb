RSpec.describe Album do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        album = Album.create
        expect(album).to_not be_valid
      end
    end
  end
end
