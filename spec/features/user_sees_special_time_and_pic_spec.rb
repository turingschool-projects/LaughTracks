RSpec.describe "As a user" do
  describe 'When I visit /comedians' do
    it 'displays a lit of comedians with name, age, and city' do
      jim_jefferies = Comedian.create(name: 'Jim Jefferies', age: 41, city: 'Sydney, Australia')
      bare = Special.create(name: 'Bare', runtime: 76, comedian_id: jim_jefferies.id, thumbnail: '')

      visit '/comedians'

      within '#comedian-0-special-0' do
        expect(page).to have_content(bare.name)
        expect(page).to have_content(bare.runtime)
        expect(page).to have_css("img[src='#{bare.thumbnail}']")
      end
    end
  end
end
