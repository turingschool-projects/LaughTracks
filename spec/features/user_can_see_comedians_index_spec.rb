RSpec.describe 'Comedian Index Page' do
    it 'shows comedian attributes' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")

      visit '/comedians'

      expect(page).to have_content(comic_1.name)
      expect(page).to have_content(comic_1.age)
      expect(page).to have_content(comic_1.city)
      expect(page).to have_content(comic_2.name)
      expect(page).to have_content(comic_2.age)
      expect(page).to have_content(comic_2.city)
  end

    it 'shows comedian specials' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")
      special_1 = comic_1.

      visit '/comedians'

  end
end
