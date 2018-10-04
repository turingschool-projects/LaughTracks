RSpec.describe 'a visitor visits the statistics portion of the comedians page' do
  it 'should show a list of stats at the top' do
    Comedian.create(name:'John Doe', age: 44, city: 'Westfield')
    Comedian.create(name:'Jane Doe', age: 50, city: 'Westfield')
    Comedian.create(name:'Sissy Spacey', age: 32, city: 'Concord')
    Special.create(name: "The Original Kings of Comedy", length: 72, url: "image.jpg")
    Special.create(name: "A Tribute to Bernie Mac", length: 60, url: "another_image.jpg")

    visit '/comedians'

    within("#statistics") do
      expect(page).to have_content(42)
    end
    within("#statistics") do
      expect(page).to have_content(66)
    end
    within("#statistics") do
      expect(page).to have_content("Westfield Concord")
    end
  end
end
