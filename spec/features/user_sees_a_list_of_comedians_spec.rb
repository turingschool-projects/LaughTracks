RSpec.describe 'Comedian Index Page' do
  before(:each) do
    @comedian_1 = Comedian.create(name: 'Barb', age: 30, city: 'Denver')
    @comedian_2 = Comedian.create(name: 'Bert', age: 50, city: 'New York')
  end

  it 'shows a list of all comedians' do
    visit '/comedians'

    expect(page).to have_content(@comedian_1.name)
    expect(page).to have_content(@comedian_2.name)
  end

  it 'shows a comedians name, age, and city' do
    visit '/comedians'

    expect(page).to have_content(@comedian_1.name)
    expect(page).to have_content(@comedian_1.age)
    expect(page).to have_content(@comedian_1.city)
  end
end
