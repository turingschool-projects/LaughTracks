RSpec.describe 'Comedian Index Page' do
    it 'shows comedian Attributes' do
    comic_1 = Comedian.create(name: "Jim Bob", age: 48)
    comic_2 = Comedian.create(name: "Sally Jo", age: 22)

    expect(page).to have_content(comic_1.name)
    expect(page).to have_content(comic_1.age)
    expect(page).to have_content(comic_2.name)
    expect(page).to have_content(comic_2.age)

  end
end
