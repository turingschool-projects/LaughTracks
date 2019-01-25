RSpec.describe "as a visitor", type: :feature do

  it 'should show a list of comedians and there attributes' do
    comedian_1 = Comedian.create(name: 'Mitch Hedberg', age: 30, born: 'St. Paul')
    comedian_2 = Comedian.create(name: 'Bill Burr', age: 59, born: 'Alanta')
    visit '/comedians'
    save_and_open_page

    within '#comedian_list' do
      expect(page).to have_content('Mitch Hedberg')
      expect(page).to have_content('Bill Burr')
    end

    within '#comedian_attributes' do
      expect(page).to have_content('30')
      expect(page).to have_content('St. Paul')
    end
  end
end
