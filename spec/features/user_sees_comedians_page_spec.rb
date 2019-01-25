RSpec.describe 'as a visitor', type: :feature do
  before :each do
    @comedian_1 = Comedian.create(name: 'Comedian 1', age: 31, city: 'New York')
    @comedian_2 = Comedian.create(name: 'Comedian 2', age: 42, city: 'New York')
    @comedian_3 = Comedian.create(name: 'Comedian 3', age: 53, city: 'Los Angeles')
    @comics = [@comedian_1, @comedian_2, @comedian_3]
  end
  it 'should see comedians' do
    visit '/comedians'

    @comics.each do |comic|
      expect(page).to have_content(comic.name)
      expect(page).to have_content(comic.age)
      expect(page).to have_content(comic.city)
    end
  end
end
