RSpec.describe "as a visitor", type: :feature do

  it 'should show a form with all required information to enter a new comedian' do

    visit '/comedians/new'

    expect(page).to have_content("New Comedian")

    within '#new_comedian' do
      expect(page).to have_selector("input[value='Name']")
      expect(page).to have_selector("input[value='Age']")
      expect(page).to have_selector("input[value='Birthplace (city, state)']")
      expect(page).to have_selector("input[value='Picture URL (optional)']")
      expect(page).to have_button("Submit")
    end

    click_on "Submit"
    expect(current_path).to eq("/comedians")
  end

  it 'should create a new comedian in the database when filled out' do

    visit 'comedians/new'
    fill_in("Name", with: "Bob")
    fill_in("Age", with: "37")
    fill_in("Birthplace (city, state)", with: "Denver, Colorado")
    fill_in("Picture URL", with: "https://cdn1.thr.com/sites/default/files/imagecache/landscape_928x523/2018/06/gettyimages-74714565-h_2018.jpg")
    click_on "Submit"

    expect(Comedian.count).to eq(1)
  end
end
