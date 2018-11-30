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
  describe 'Class Methods' do
    before(:each) do
      Comedian.create(age: 48, firstname: "Bozo", city: 'Dublin')
      Comedian.create(age: 49, firstname: "Bozohead", city: 'Dublin')
      Comedian.create(age: 50, firstname: "Bozonose", city: 'Topeka')
      Comedian.create(age: 51, firstname: "Bozotoes", city: 'Topeka')
      Comedian.create(age: 52, firstname: "Bozohands", city: 'Topeka')
    end
      it 'returns average_age correctly' do
        expect(Comedian.average_age).to eq(50)
      end
      it 'returns distinct cities correctly' do

        expect(Comedian.cities).to eq(%w(Topeka Dublin))
      end
      it 'fetches all data correctly with empty params' do
        params = {}
        expected = {
          comedians: Comedian.all,
          cities: %w(Topeka Dublin),
          average_age: 50,
        }
        expect(Comedian.fetch_data(params)).to eq(expected)

      end

    end
  end
