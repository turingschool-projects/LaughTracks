RSpec.describe 'as a visitor', type: :feature do
  before :each do
    @comedian_1 = Comedian.create(name: 'Comedian 1', age: 31, city: 'New York')
    @comedian_2 = Comedian.create(name: 'Comedian 2', age: 42, city: 'New York')
    @comedian_3 = Comedian.create(name: 'Comedian 3', age: 53, city: 'Los Angeles')
  end
  it 'should see a home page' do
    visit '/'

    expect(page).to have_content(@comedian_1)
    expect(page).to have_content(@comedian_2)
    expect(page).to have_content(@comedian_3)
  end
end
