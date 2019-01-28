RSpec.describe "user sees comedian statistics", type: :feature do

  before :each do
    Comedian.create(name: "Ellen DeGeneres", age: 61, city: "Metairie")
    Comedian.create(name: "Anjelah Johnson-Reyes", age: 36, city: "San Jose")
    Comedian.create(name: "Wanda Sykes", age: 54, city: "Portsmouth")
    Comedian.create(name: "Chris Rock", age: 53, city: "Andrews")

    ellen = Comedian.find_by(name: "Ellen DeGeneres")
    ellen.specials.create(special_name: "Relatable", length: 68, image_location: "https://m.media-amazon.com/images/M/MV5BYTlmYzI2NTMtYmZmOS00ZTYzLTg2ZTUtZDhkZjhkZDVjMWQwXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_UX182_CR0,0,182,268_AL_.jpg")
    ellen.specials.create(special_name: "Here and Now", length: 60, image_location: "https://www.imdb.com/title/tt0365156/mediaviewer/rm3888815360?ref_=tt_ov_i")
    ellen.specials.create(special_name: "The Beginning", length: 66, image_location: "https://m.media-amazon.com/images/M/MV5BODQxNzQzMDc4Nl5BMl5BanBnXkFtZTgwMTgwNjgwMzE@._V1_UY268_CR9,0,182,268_AL_.jpg")

    anjelah = Comedian.find_by(name: "Anjelah Johnson-Reyes")
    anjelah.specials.create(special_name: "That's How We Do It", length: 75, image_location: "https://m.media-amazon.com/images/M/MV5BMTExMjY0NTA2NzdeQTJeQWpwZ15BbWU4MDA3MDIxMjYx._V1_UX182_CR0,0,182,268_AL_.jpg")
    anjelah.specials.create(special_name: "Not Fancy", length: 90, image_location: "https://m.media-amazon.com/images/M/MV5BODVkNDE4ZTQtNTcyMS00OTI4LWI4NjMtYmI2ZjVlNGMxZTNjXkEyXkFqcGdeQXVyMTQxMzY0ODY@._V1_UY268_CR4,0,182,268_AL_.jpg")

    wanda = Comedian.find_by(name: "Wanda Sykes")
    wanda.specials.create(special_name: "I'ma Be Me", length: 87, image_location: "https://m.media-amazon.com/images/M/MV5BOTAxODQ3NzQxOV5BMl5BanBnXkFtZTcwNDIwOTY4Mg@@._V1_UX182_CR0,0,182,268_AL_.jpg")
    wanda.specials.create(special_name: "What Happened... Ms. Sykes", length: 59, image_location: "https://m.media-amazon.com/images/M/MV5BOTUyMDFlZTYtZmNmZi00ODhhLTk2NTAtMjFhM2ZjNTNkOWUwXkEyXkFqcGdeQXVyNDEzMDg4Mjg@._V1_UX182_CR0,0,182,268_AL_.jpg")

    chris = Comedian.find_by(name: "Chris Rock")
    chris.specials.create(special_name: "Big Ass Jokes", length: 27, image_location: "https://m.media-amazon.com/images/M/MV5BOWZlNzM0NDUtYjg5NC00YTBhLWFjYjgtODVlZTlmOGI5ZjkyXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_UY268_CR6,0,182,268_AL_.jpg")
    chris.specials.create(special_name: "Bigger & Blacker", length: 65, image_location: "https://m.media-amazon.com/images/M/MV5BODQzOWExYjktZDQ2OC00YTA5LWI3YzctMDFjNjc3ZTM5NTA0XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")
    chris.specials.create(special_name: "Never Scared", length: 80, image_location: "https://m.media-amazon.com/images/M/MV5BMTlhYzMzNzItNWMyYy00ZGRlLWI1N2UtOGI2YjIwOGEwYTViXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg")
  end
  context "when a user selects a comedian by age" do
    it "shows only that comedians data" do
      visit '/comedians?age=36'
# save_and_open_page
      within '.comedian_info' do
        expect(page).to have_content("Anjelah Johnson-Reyes")
        expect(page).to_not have_content("Ellen DeGeneres")
      end
    end
  end
end
