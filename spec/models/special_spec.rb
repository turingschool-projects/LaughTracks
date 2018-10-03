RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create(runtime: 60, image_url: "https://upload.wikimedia.org/wikipedia/commons/4/4e/Amy%27s_smart_girls_logo.png", comedian_id: 1)

        expect(special).to_not be_valid
      end
    end
  end
end
