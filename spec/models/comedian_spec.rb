RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48, hometown: 'St. Paul', headshot_link: '1.jpg')
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg', hometown: 'St. Paul', headshot_link: '1.jpg')
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing a hometown' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 48, headshot_link: '1.jpg')
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing a headshot_link' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 48, hometown: 'St. Paul')
        expect(comic).to_not be_valid
      end
    end
  end
end
