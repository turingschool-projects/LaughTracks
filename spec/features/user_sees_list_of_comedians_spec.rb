RSpec.describe "as a visitor", type: :feature do

  xit "should show Comedians as title" do
    visit '/comedians'
    save_and_open_page

    within ('#jumbotron') do
        expect(page).to have_content("Comedians")
  end

end

end
