RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a title' do
        special = Special.create(runtime: 200)
        expect(special).to_not be_valid
      end
    end
  end
  describe "class methods" do
    it "should calculate average specials runtime" do
      special_1 = Special.create(title: "Kid Gorgeous", runtime: 65, image_file: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
      special_2 = Special.create(title: "Comedy Central Presents: Mitch Hedberg", runtime: 30, image_file: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGHGPBMGUNy3WnCVWPyiCQxtRZ_G4KC3Cjv1JiCmsq6rM6lk3q-g")
      average_time = Special.average_runtime

      expect(average_time).to eq(47.5)
    end

    it "sorter" do
      comedian_1 = Comedian.create(name: "John Mulaney", age: 36, hometown: "Chicago, IL")
      comedian_2 = Comedian.create(name: "Mitch Hedberg", age: 36, hometown: "Saint Paul, MN")
      comedian_3 = Comedian.create(name: "Blah", age: 20, hometown: "Chicago, IL")
      special_1 = comedian_1.specials.create(title: "Kid Gorgeous", runtime: 65, image_file: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
      special_2 = comedian_2.specials.create(title: "Comedy Central Presents: Mitch Hedberg", runtime: 65, image_file: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGHGPBMGUNy3WnCVWPyiCQxtRZ_G4KC3Cjv1JiCmsq6rM6lk3q-g")
      special_3 = comedian_3.specials.create(title: "Blah Special", runtime: 40, image_file: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGHGPBMGUNy3WnCVWPyiCQxtRZ_G4KC3Cjv1JiCmsq6rM6lk3q-g")
      two_comedians = Comedian.sorter({age: 36})
      all_comedians = Comedian.all
      actual1 = Special.sorter(two_comedians)
      actual2 = Special.sorter(all_comedians)

      expect(actual1).to eq([special_1, special_2])
      expect(actual2).to eq([special_1, special_2, special_3])
    end
  end
end
