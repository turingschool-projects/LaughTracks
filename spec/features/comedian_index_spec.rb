RSpec.describe "as a visitor", type: :feature do

  it 'should show a list of comedians and there attributes' do
    comedian_1 = Comedian.create(name: 'Mitch Hedberg', age: 30, born: 'St. Paul', deceased: true)
    comedian_2 = Comedian.create(name: 'Bill Burr', age: 59, born: 'Atlanta')
    visit '/comedians'

    within '#comedian-list' do
      expect(page).to have_content('Mitch Hedberg')
      expect(page).to have_content('Bill Burr')
    end

    within '#mitch-hedberg' do
      expect(page).to have_content('30 - Deceased')
      expect(page).to have_content('St. Paul')
    end

    within '#bill-burr' do
      expect(page).to have_content('59')
      expect(page).to have_content('Atlanta')
    end
  end

  it 'should show a comedians specials' do
    comedian_1 = Comedian.create(name: 'Mitch Hedberg', age: 30, born: 'St. Paul', deceased: true)
    comedian_1.specials.create(name: "Comedy Central Presents", length: 30, image_url: "https://cdn1.thr.com/sites/default/files/imagecache/landscape_928x523/2018/06/gettyimages-74714565-h_2018.jpg")

    visit '/comedians'

    within '#mitch-hedberg-specials' do
      expect(page).to have_content("Comedy Central Presents")
      expect(page).to have_content("30 minutes")
    end
  end

  it 'should show statistics for comedians and specials' do
    comedian_1 = Comedian.create(name: 'Mitch Hedberg', age: 30, born: 'St. Paul')
    comedian_2 = Comedian.create(name: 'Bill Burr', age: 20, born: 'Atlanta')
    comedian_2 = Comedian.create(name: 'Tom Bob', age: 10, born: 'Atlanta')
    comedian_1.specials.create(name: "special 1", length: 10)
    comedian_1.specials.create(name: "special 2", length: 20)
    comedian_1.specials.create(name: "special 3", length: 30)

    visit '/comedians'

    within '#statistics' do
      expect(page).to have_content("20")
      expect(page).to have_content("20")
      expect(page).to have_content("St. Paul")
      expect(page).to have_content("Atlanta")
    end
  end

  it 'should show only comedians of a specific age when i select an age' do
    comedian_1 = Comedian.create(name: 'Mitch Hedberg', age: 30, born: 'St. Paul')
    comedian_2 = Comedian.create(name: 'Bill Burr', age: 20, born: 'Atlanta')
    comedian_2 = Comedian.create(name: 'Tom Bob', age: 10, born: 'Atlanta')

    visit '/comedians'
    select '20', from: 'age-query'
    click_on 'Submit'
    within '#comedian-list' do
      expect(page).to have_content("Bill Burr")
    end
  end
end
