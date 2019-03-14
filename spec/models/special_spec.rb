RSpec.describe Special do
  describe 'Validations' do
    it 'should be invalid if missing a name' do
      special = Special.new(runtime_mins: 77, image_url: 'dostuff')

      expect(special).to_not be_valid
    end

    it 'should be invalid if missing a runtime' do
      special = Special.new(name: 'special', image_url: 'dostuff')

      expect(special).to_not be_valid
    end
    it 'should be invalid if missing a image_url' do
      special = Special.new(name: 'special', runtime_mins: 77)

      expect(special).to_not be_valid
    end
  end
end
