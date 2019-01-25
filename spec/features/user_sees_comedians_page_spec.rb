RSpec.describe 'as a visitor', type: :feature do
  before :each do
    @comedian_1 = Comedian.create(name: 'Comedian 1', age: 31, city: 'New York')
    @comedian_2 = Comedian.create(name: 'Comedian 2', age: 42, city: 'New York')
    @comedian_3 = Comedian.create(name: 'Comedian 3', age: 53, city: 'Los Angeles')
    @comics = [@comedian_1, @comedian_2, @comedian_3]

    @special_1 = @comedian_1.specials.create(name: 'Special 1')
    @special_2 = @comedian_1.specials.create(name: 'Special 2')
    @special_3 = @comedian_2.specials.create(name: 'Special 3')
  end
  it 'should see comedians' do
    visit '/comedians'

    @comics.each do |comic|
      within "#comic-#{comic.id}" do
        expect(page).to have_content(comic.name)
        expect(page).to have_content("Age: #{comic.age}")
        expect(page).to have_content("City: #{comic.city}")
      end
    end
  end

  it 'should see specials for comedians' do
    visit '/comedians'

    save_and_open_page

    @comics.each do |comic|
      within "#comic-#{comic.id}" do
        comic.specials.each do |special|
          expect(page).to have_content(special.name)
        end
      end
    end
  end
end
