RSpec.describe "a visitor visits the comedians page" do
  it 'should show comedians information'do
    comic = Comedian.create(name: 'Mitch Hedberg', age: 48, city: 'Helena, Montana')
    visit '/comedians'

    expect(page).to have_content(comic.name)
    expect(page).to have_content(comic.age)
    expect(page).to have_content(comic.city)
  end

end
