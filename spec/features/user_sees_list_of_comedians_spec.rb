RSpec.describe 'as a visitor', type: :feature do
  it 'should display a list of comedians' do
    comedian = Comedian.create(name: "John Mulaney", age: 36, city: "Chicago, IL")
    visit '/comedians'
    #save_and_open_page debugging tool for capybara
    within '#comedians' do
      #greeting stands for the css id here
      expect(page).to have_content("John Mulaney")
      expect(page).to have_content(36)
      expect(page).to have_content('Chicago')
      #
      # expect(page).to have_link('John Mulaney')
      # click_link 'John Mulaney'
      # expect(current_path).to eq ('/john-mulaney')

    end
    # it 'shows song data on the page' do
    #   song_title = "Don't Stop Believin"
    #   Song.create(title: song_title, length: 100)
      #put bangs to make sure everything is correct. e.g. if you forgot to put the length it will not pass the test
    #   visit '/'
    #   click_link 'Songs'
    #
    #   expect(page).to have_content(song_title)
    # end
  end

end
