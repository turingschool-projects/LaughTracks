RSpec.describe "as a visitor", type: :feature do

  it 'should show a form with all required information to enter a new comedian' do

    visit '/comedians/new'

    expect(page).to have_content("New Comedian")

    within '#new_comedian' do
      expect(page).to have_field("Name")
      expect(page).to have_field("Age")
      expect(page).to have_field("Birthplace (city, state)")
      expect(page).to have_field("Picture Url (optional)")
      expect(page).to have_button("Submit")
    end

    click_on "Submit"
    expect(current_path).to eq("/comedians")
  end
end
