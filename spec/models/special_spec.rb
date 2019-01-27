RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end

  describe "Class Methods" do
    describe "run_time" do
      it "returns the average length of the specials" do
        Special.create(special_name: "Big Ass Jokes", length: 27, image_location: "https://m.media-amazon.com/images/M/MV5BOWZlNzM0NDUtYjg5NC00YTBhLWFjYjgtODVlZTlmOGI5ZjkyXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_UY268_CR6,0,182,268_AL_.jpg")
        Special.create(special_name: "Bigger & Blacker", length: 65, image_location: "https://m.media-amazon.com/images/M/MV5BODQzOWExYjktZDQ2OC00YTA5LWI3YzctMDFjNjc3ZTM5NTA0XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")
        Special.create(special_name: "Never Scared", length: 80, image_location: "https://m.media-amazon.com/images/M/MV5BMTlhYzMzNzItNWMyYy00ZGRlLWI1N2UtOGI2YjIwOGEwYTViXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg")

        expect(Special.run_time).to eq(57)
      end
    end
  end
end
