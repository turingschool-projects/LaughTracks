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
      special_1 = Special.create(name: "Jim Bob Is Funny", comedian_id: comic_1.id)
      special_2 = Special.create(name: "Jimmy makes people laugh", comedian_id: comic_1.id)

      visit '/comedians'

      expect(page).to have_content(special_1.name)
      expect(page).to have_content(special_2.name)

  end
end
