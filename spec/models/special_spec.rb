RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end

      it 'returns average runtime length' do
        Special.create(name: 'Louis CK',
          release_date: Date.parse('1/1/2017'), runtime_length: 88, comedian_id: 1,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
        Special.create(name: 'Oh My God',
          release_date: Date.parse('1/1/2013'), runtime_length: 94, comedian_id: 1,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
          actual = Special.average_runtime
          expected = 91
          expect(actual).to eq(expected)
      end
    end
  end
end
