RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a firstname' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(firstname: 'Mitch', lastname: 'Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end
  describe 'Instance Methods' do
    describe 'name returns correctly' do
      it 'returns an the right name' do

        comic = Comedian.create(age: 48, firstname: "Bozo", lastname: "Klein")
        expected_result = "Bozo Klein"
        expect(comic.name).to eq(expected_result)
      end
    end
    describe 'image_path returns correctly' do
      it 'returns an the right image path' do
        comic = Comedian.create(age: 48, firstname: "Bozo")
        expected_result = "images/comedians/bozo/profile_pic.jpg"
        expect(comic.image_path).to eq(expected_result)
        comic = Comedian.create(age: 48, firstname: "Bozo", lastname: "Klein")
        expected_result = "images/comedians/bozo_klein/profile_pic.jpg"
        expect(comic.image_path).to eq(expected_result)
      end
    end
  end
end
