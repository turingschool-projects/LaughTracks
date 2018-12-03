RSpec.describe "As a user" do
  describe "when I visit /comedians?age=36" do
    it "should see only comedians whose age is 36" do
      comedian_1 = Comedian.create(name: "John Mulaney", age: 36, hometown: "Chicago, IL")
      comedian_2 = Comedian.create(name: "Mitch Hedberg", age: 36, hometown: "Saint Paul, MN")
      comedian_3 = Comedian.create(name: "Blah", age: 20, hometown: "Nowhere")
      comedian_1.specials.create(title: "Kid Gorgeous", runtime: 65, image_file: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
      comedian_2.specials.create(title: "Comedy Central Presents: Mitch Hedberg", runtime: 30, image_file: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGHGPBMGUNy3WnCVWPyiCQxtRZ_G4KC3Cjv1JiCmsq6rM6lk3q-g")

      visit '/comedians?age=36'

      expect(page).not_to have_content(comedian_3.name)
      expect(page).not_to have_content(comedian_3.age)
      expect(page).not_to have_content(comedian_3.hometown)
    end

    it "should see updated statistics for only the comedians that show" do
      comedian_1 = Comedian.create(name: "John Mulaney", age: 36, hometown: "Chicago, IL")
      comedian_2 = Comedian.create(name: "Mitch Hedberg", age: 36, hometown: "Saint Paul, MN")
      comedian_3 = Comedian.create(name: "Blah", age: 20, hometown: "Chicago, IL")
      comedian_1.specials.create(title: "Kid Gorgeous", runtime: 65, image_file: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
      comedian_2.specials.create(title: "Comedy Central Presents: Mitch Hedberg", runtime: 30, image_file: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGHGPBMGUNy3WnCVWPyiCQxtRZ_G4KC3Cjv1JiCmsq6rM6lk3q-g")
      comedians = Comedian.sorter({age: 36})

      visit '/comedians?age=36'

      within("#total-specials") do
        expect(page).to have_content("#{Special.count}")
      end

      expected1 = Comedian.sorter(age: 36).average_age
      within("#average-age") do
        expect(page).to have_content(expected1)
      end

      expected2 = Special.average_runtime
      within("#statistics") do
        expect(page).to have_content(expected2)
      end

      expected3 = Comedian.unique_hometowns
      within("#statistics") do
        expect(page).to have_content("#{expected3.reverse.join(" ")}")
      end
    end
  end
end
