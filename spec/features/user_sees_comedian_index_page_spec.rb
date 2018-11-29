RSpec.describe 'Comedian Index Page' do
  it 'As a visitor' do
    comedian = Comedian.create(name: "Andrew Bueno", age: 32, city: "Denver")

    visit "/comedians"
    within "#comic-#{comedian.id}" do
      expect(page).to have_content(comedian.name)
      expect(page).to have_content("Age: #{comedian.age}")
      expect(page).to have_content("City: #{comedian.city}")
    end
  end

  it 'shows data for specials' do
    comedian = Comedian.create(name: "Andrew Bueno", age: 32, city: "Denver")
    special = comedian.specials.create(name: "Hell Yeah", length: 65)

    visit "/comedians"
    within "#comic-#{comedian.id}-specials" do
      expect(page).to have_content("Name: #{special.name}, Length: #{special.length} min")
    end
  end
end
