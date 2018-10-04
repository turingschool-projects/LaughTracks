RSpec.describe 'a visitor visits the comedians page' do
  it 'should show a list of all comedian specials' do
    comedian = Comedian.create(name: "Dave Funny", age: 45, city: "D.C.")
    special = comedian.specials.create(name: "The Best Special", length: 49, url: "https://m.media-amazon.com/images/M/MV5BNGYzOTE0YzEtMjc5NC00MTg2LTk2MDAtMzJlMjM1NTU1MjcwXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg")
    visit '/comedians'

    within("#special_#{special.id}") do
      expect(page).to have_content('The Best Special')
    end
    within("#special_#{special.id}") do
      expect(page).to have_content(49)
    end
  end
end
