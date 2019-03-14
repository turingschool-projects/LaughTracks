RSpec.describe Comedian do

  before(:each) do
    c1 = Comedian.create(name: "Patton Oswalt", age: 50, city: "Waco")
    c2 = Comedian.create(name: "Whoopi Goldberg", age: 57, city: "New York City")
    c3 = Comedian.create(name: "Steve Martin", age: 40, city: "Brooklyn")
  end

  describe 'when a user visits comedians' do
    describe 'for each comedian' do
      it 'can find comedian attributes' do

        visit '/comedians'

        within '#patton-oswalt' do
          expect(page).to have_content("Patton Oswalt")
          expect(page).to have_content(50)
        end

        within '#whoopi-goldberg' do
          expect(page).to have_content("Whoopi Goldberg")
          expect(page).to have_content(57)
        end

        within '#steve-martin' do
          expect(page).to have_content("Steve Martin")
          expect(page).to have_content(40)
        end
      end
    end
  end
end
