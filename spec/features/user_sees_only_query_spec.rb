RSpec.describe 'Comedian query'do
  context 'As a visitor' do
    it 'Should see just result of query' do
      comedian = Comedian.create(name: "Maddie Jones", city: "New York City", age:24 )
      comedian2 = Comedian.create(name: "Jason Jones", city: "New York City", age:34 )
      comedian3 = Comedian.create(name:"Viki", city: "Denver", age:34)

      visit '/comedians?age=34'

      expect(page).to have_no_content(comedian.age)
      expect(page).to have_content(comedian2.age)
      expect(page).to have_content("Average Age : 34")
    end
  end
end
