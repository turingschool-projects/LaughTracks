RSpec.describe 'Comedian Index Page' do
  it 'shows data for comedians' do
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

  it 'shows statistics for comedians and specials' do

    visit "/comedians"

    within "#statistics" do
      expect(page).to have_content("Statistics")
      expect(page).to have_content("Average age of Comedians: #{Comedian.average_age}")
      expect(page).to have_content("Average TV Special Run Time: #{Special.average_run_time}")
      expect(page).to have_content("Average TV Special Run Time: #{Comedian.list_unique_cities}")

    end
  end

end
