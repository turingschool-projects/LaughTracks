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
    describe 'at the top of the page' do
      it 'can display comedian stats' do

        visit '/comedians'

        within '#average-runtime' do
          expect(page).to have_content("Average Runtime:")
          expect(page).to have_content(60.25)
        end

        within '#total-specials' do
          expect(page).to have_content("Total TV Specials")
          expect(page).to have_content("Patton Oswalt: 3 | Whoopi Goldberg: 1 | Steve Martin: 0 |")
        end

        within '#average-age' do
          expect(page).to have_content("Average Age:")
          expect(page).to have_content(49)
        end

        within '#cities' do
          expect(page).to have_content("Cities:")
          expect(page).to have_content("Brooklyn, New York City, Waco")
        end

      end
    end
  end
end
