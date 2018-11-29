RSpec.describe 'As a User' do
  describe 'When I visit /comedians' do
    it 'should see specials for comedians' do
      comedian_1 = Comedian.create(name: "John Mulaney", age: 36, hometown: "Chicago, IL")
      comedian_2 = Comedian.create(name: "Mitch Hedberg", age: 36, hometown: "Saint Paul, MN")
      comedian_1.specials.create(title: "Kid Gorgeous", runtime: 65)
      comedian_2.specials.create(title: "Comedy Central Presents: Mitch Hedberg", runtime: 30)

      visit '/comedians'

      expect(page).to have_content(comedian_1.special.title)
      expect(page).to have_content(comedian_1.special.title)
    end
  end
end
