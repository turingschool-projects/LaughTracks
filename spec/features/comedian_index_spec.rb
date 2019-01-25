RSpec.describe "as a visitor", type: :feature do

  it 'should show a list of comedians' do
    comedian_1 = Comedian.create(name: 'Mitch Hedberg', age: 30, born: 'St. Paul')
    comedian_2 = Comedian.create(name: 'Bill Burr', age: 59, born: 'Alanta')
    visit '/comedians'

    within '#comedian_list'
    expect(page).to have_content('Mitch Hedberg')
    expect(page).to have_content('Bill Burr')
  end
end
