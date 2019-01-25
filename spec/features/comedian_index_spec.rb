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
    special_1 = Special.create(name: "Comedy Central Presents", length: 30, comedian: 1)

    visit '/comedians'

    within '#mitch-hedberg-specials'
      expect(page).to have_content("Comedy Central Presents")
      expect(page).to have_content("30 minutes")
  end
end
