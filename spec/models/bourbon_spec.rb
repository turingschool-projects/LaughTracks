RSpec.describe Bourbon do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a location' do
        bottle = Bourbon.create(distillery: "Buffalo Trace")
        expect(bottle).to_not be_valid
      end

      it 'should be invalid if missing a distillery' do
        bottle = Bourbon.create(location: 'Frankfort, KY')
        expect(bottle).to_not be_valid
      end
    end
  end
end
