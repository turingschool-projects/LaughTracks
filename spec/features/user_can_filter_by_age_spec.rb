RSpec.describe Comedian do

  before(:each) do
    c1 = Comedian.create(name: "Patton Oswalt", age: 50, city: "Waco")
    c2 = Comedian.create(name: "Whoopi Goldberg", age: 57, city: "New York City")
    c3 = Comedian.create(name: "Steve Martin", age: 40, city: "Brooklyn")
  end

  describe 'when a user visits comedians' do
    describe 'they can filter by age' do
      it 'will only show those results' do

        visit '/comedians?age=50'
      
        expect(page).to have_content("Patton Oswalt")
        expect(page).to have_no_content("Whoopi Goldberg")
      end
    end
  end
end
