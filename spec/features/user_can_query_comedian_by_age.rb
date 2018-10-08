RSpec.describe 'Visitor can query by age and see results' do
  it 'vistor sees comedians that match age query' do
    mitch = Comedian.create(name: 'Mitch Hedberg', age: 48, city: "Los Angeles")
    hannah = Comedian.create(name: 'Hannah Hart', age: 34, city: "Los Angeles")
    mamrie = Comedian.create(name: 'Mamrie Hart', age: 32, city: "New York")

    visit "/comedians?age=34"

    expect(page).to have_content("Name: Hannah Hart")
    expect(page).to_not have_content("Name: Mitch Hedberg")
    expect(page).to_not have_content("Name: Mamrie Hart")
  end
end
