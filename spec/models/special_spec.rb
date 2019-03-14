RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create(runtime: 71, 
                                 thumbnail_link: '1.jpg')

        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a runtime' do
        special = Special.create(name: 'Tom Segura: Disgraceful',
                                 thumbnail_link: '1.jpg')

        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a thumbnail_link' do
        special = Special.create(name: 'Tom Segura: Disgraceful',
                                 runtime: 71)

        expect(special).to_not be_valid
      end
    end
  end
end
