RSpec.describe Comedian do

  before(:each) do
    c1 = Comedian.create(name: "Patton Oswalt", age: 50, city: "Waco")
    c2 = Comedian.create(name: "Whoopi Goldberg", age: 57, city: "New York City")
    c3 = Comedian.create(name: "Steve Martin", age: 40, city: "Brooklyn")
    c1.specials.create(comedian_id: 1, name: "Talking for Clapping", runtime: 65, thumb: "https://m.media-amazon.com/images/M/MV5BZmMyYzAzMzktOWM4MS00YmI2LThmM2MtNjBkODZkOWQxODNmXkEyXkFqcGdeQXVyNjYzMDA4MTI@._V1_UY268_CR3,0,182,268_AL_.jpg")
    c1.specials.create(comedian_id: 1, name: "Tragedy Plus Comedy Equals Time", runtime: 59, thumb: "https://m.media-amazon.com/images/M/MV5BODU2MDEyNGYtODE3ZC00YjUyLTk3ODctYTU2MzM5Y2M3NWM4XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR0,0,182,268_AL_.jpg")
    c1.specials.create(comedian_id: 1, name: "No Reason to Complain", runtime: 42, thumb: "https://m.media-amazon.com/images/M/MV5BMTk3MjUxODI5NF5BMl5BanBnXkFtZTcwMjcxMTIzMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
    c2.specials.create(comedian_id: 2, name: "Direct from Broadway", runtime: 75, thumb: "https://m.media-amazon.com/images/M/MV5BMGE4MDcwZTMtYjIxNC00NjkxLWI1MTgtOTgzMDQ5ZTgzZDc4XkEyXkFqcGdeQXVyMDgyNjA5MA@@._V1_UX182_CR0,0,182,268_AL_.jpg")
  end

  describe 'when a user visits comedians' do
    describe 'for each comedian' do
      it 'can find comedian attributes' do

        visit '/comedians'

        within '#patton-oswalt' do
          expect(page).to have_content("Patton Oswalt")
          expect(page).to have_content("Age: 50")
          expect(page).to have_content("City: Waco")

        end

        within '#whoopi-goldberg' do
          expect(page).to have_content("Whoopi Goldberg")
          expect(page).to have_content("Age: 57")
          expect(page).to have_content("City: New York City")
        end

        within '#steve-martin' do
          expect(page).to have_content("Steve Martin")
          expect(page).to have_content("Age: 40")
          expect(page).to have_content("City: Brooklyn")
        end
      end
    end
  end

  describe 'when a user visits comedians' do
    describe 'for each comedian' do
      it 'can list their tv specials' do

        visit '/comedians'

        within '#patton-oswalt' do
          expect(page).to have_content("Talking for Clapping")
          expect(page).to have_content("Tragedy Plus Comedy Equals Time")
          expect(page).to have_content("No Reason to Complain")

        end

        within '#whoopi-goldberg' do
          expect(page).to have_content("Direct from Broadway")
        end

        within '#steve-martin' do
          expect(page).to_not have_content("Direct from Broadway")
        end
      end
    end
  end

  describe 'when a user visits comedians' do
    describe 'for each comedian' do
      it 'displays thumbnails of their tv specials' do

        visit '/comedians'

        within '#patton-oswalt' do
          expect(page).to have_xpath("//img[@src='https://m.media-amazon.com/images/M/MV5BZmMyYzAzMzktOWM4MS00YmI2LThmM2MtNjBkODZkOWQxODNmXkEyXkFqcGdeQXVyNjYzMDA4MTI@._V1_UY268_CR3,0,182,268_AL_.jpg']")
          expect(page).to have_xpath("//img[@src='https://m.media-amazon.com/images/M/MV5BODU2MDEyNGYtODE3ZC00YjUyLTk3ODctYTU2MzM5Y2M3NWM4XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR0,0,182,268_AL_.jpg']")
          expect(page).to have_xpath("//img[@src='https://m.media-amazon.com/images/M/MV5BMTk3MjUxODI5NF5BMl5BanBnXkFtZTcwMjcxMTIzMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg']")
        end

        within '#whoopi-goldberg' do
          expect(page).to have_xpath("//img[@src='https://m.media-amazon.com/images/M/MV5BMGE4MDcwZTMtYjIxNC00NjkxLWI1MTgtOTgzMDQ5ZTgzZDc4XkEyXkFqcGdeQXVyMDgyNjA5MA@@._V1_UX182_CR0,0,182,268_AL_.jpg']")
        end

        within '#steve-martin' do
          expect(page).to_not have_xpath("//img[@src='https://m.media-amazon.com/images/M/MV5BNjk2MDk4Njk3M15BMl5BanBnXkFtZTgwNDYxMDA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg']")
        end
      end
    end
  end

  describe 'when a user visits comedians' do
    describe 'for each comedian' do
      it 'can calculate total number of tv specials' do

        visit '/comedians'

        within '#patton-oswalt' do
          expect(page).to have_content("Total TV Specials: 3")
        end

        within '#whoopi-goldberg' do
          expect(page).to have_content("Total TV Specials: 1")
        end

        within '#steve-martin' do
          expect(page).to have_content("Total TV Specials: 0")
        end
      end
    end
  end
end
