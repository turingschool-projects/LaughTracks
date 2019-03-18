RSpec.describe Comedian do

  describe 'when a user visits new comedian page' do
    it 'contains a form to fill out' do
      visit '/comedians/new'
       expect(page).to have_content('Name:')
       expect(page).to have_content('Age:')
       expect(page).to have_content('Hometown:')
       expect(page).to have_field('comedian[hometown]')
       expect(page).to have_field('comedian[name]')
       expect(page).to have_field('comedian[age]')
    end

    it 'can fill out and submit the form' do
      visit '/comedians/new'
        fill_in 'comedian[name]', with: 'Some Guy'
        fill_in 'comedian[age]', with: 42
        fill_in 'comedian[hometown]', with: 'This City'
        click_on 'Submit!'

        within '#some-guy' do
          expect(page).to have_content('Some Guy')
          expect(page).to have_content(42)
          expect(page).to have_content('This City')
        end
    end
  end
end
