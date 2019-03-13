RSpec.describe Award do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        award = Award.create
        expect(award).to_not be_valid
      end
    end
  end
end
