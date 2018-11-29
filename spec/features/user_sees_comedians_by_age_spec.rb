RSpec.describe "As a user" do
  it "when I visit /comedians?age=36" do
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
end
