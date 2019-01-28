RSpec.describe "a user see the welcome page", type: :feature do
  context "they visit /comedians" do
    it "they see a welcome message" do
      Comedian.create(name: "Ellen DeGeneres", age: 61, city: "Metairie")
      Comedian.create(name: "Anjelah Johnson-Reyes", age: 36, city: "San Jose")
      Comedian.create(name: "Wanda Sykes", age: 54, city: "Portsmouth")
      Comedian.create(name: "Bob Newhart", age: 89, city: "Oak Park")
      Special.create(special_name: "Big Ass Jokes", length: 27, image_location: "https://m.media-amazon.com/images/M/MV5BOWZlNzM0NDUtYjg5NC00YTBhLWFjYjgtODVlZTlmOGI5ZjkyXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_UY268_CR6,0,182,268_AL_.jpg")
      Special.create(special_name: "Bigger & Blacker", length: 65, image_location: "https://m.media-amazon.com/images/M/MV5BODQzOWExYjktZDQ2OC00YTA5LWI3YzctMDFjNjc3ZTM5NTA0XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")
      Special.create(special_name: "Never Scared", length: 80, image_location: "https://m.media-amazon.com/images/M/MV5BMTlhYzMzNzItNWMyYy00ZGRlLWI1N2UtOGI2YjIwOGEwYTViXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg")

      visit '/comedians'

      within '#greeting' do
        expect(page).to have_content("Welcome to Comedians!!")
      end
    end
  end
end
