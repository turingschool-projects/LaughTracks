RSpec.describe 'as a visitor', type: :feature do
  before :each do
    @img_1 = "https://m.media-amazon.com/images/M/MV5BZjgwZjQ5OTgtMWY0MC00YTQ5LWE2MzEtMWEyYTc5ODhlMTQyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg"
    @img_2 = "https://m.media-amazon.com/images/M/MV5BODU5MWI2YWEtNTQ3Ny00OWQ3LThkNTUtYzdiNDVjNDczM2NiXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg"
    @img_3 = "https://m.media-amazon.com/images/M/MV5BMTQ0Mzc4MzkwOF5BMl5BanBnXkFtZTcwMjc1MTk5Mw@@._V1_.jpg"
    @comedian_1 = Comedian.create(name: 'Comedian 1', age: 31, city: 'New York')
    @comedian_2 = Comedian.create(name: 'Comedian 2', age: 42, city: 'New York')
    @comedian_3 = Comedian.create(name: 'Comedian 3', age: 53, city: 'Los Angeles')
    @comics = [@comedian_1, @comedian_2, @comedian_3]

    @special_1 = @comedian_1.specials.create(name: 'Special 1', runtime: 64, thumbnail: @img_1)
    @special_2 = @comedian_1.specials.create(name: 'Special 2', runtime: 85, thumbnail: @img_2)
    @special_3 = @comedian_2.specials.create(name: 'Special 3', runtime: 41, thumbnail: @img_3)
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

    @comics.each do |comic|
      within "#comic-#{comic.id}" do
        comic.specials.each do |special|
          expect(page).to have_content(special.name)
        end
      end
    end
  end

  it 'should see runtime for each special' do
    visit '/comedians'

    @comics.each do |comic|
      within "#comic-#{comic.id}" do
        comic.specials.each do |special|
          expect(page).to have_content("Runtime: #{special.runtime}")
        end
      end
    end
  end

  it 'should see thumbnail for each special' do
    visit '/comedians'

    @comics.each do |comic|
      within "#comic-#{comic.id}" do
        comic.specials.each do |special|
          expect(page).to have_xpath(special.thumbnail)
        end
      end
    end
  end

  it 'should see statistics' do
    visit '/comedians'
    binding.pry
    within "nav" do
      expect(page).to have_content("New York")
      expect(page).to have_content("Los Angeles")
      expect(page).to have_content("Average Age: 42")
      expect(page).to have_content("Average Runtime: 63")
      expect(page).to have_content("Total Specials: 3")
    end
  end
end
