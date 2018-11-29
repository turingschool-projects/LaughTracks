RSpec.describe 'A visitor to our app' do
  it 'should see a homepage' do
    visit '/comedians'

    expect(page).to have_content("Laugh Tracks")
  end

  it 'should see a list of comedians' do
    comedian = Comedian.create(name: "John Doe", age: 0, city: "Nowhereseville")
    visit '/comedians'

    expect(page).to have_content(comedian.name)
    expect(page).to have_content("Age: #{comedian.age}")
    expect(page).to have_content("City: #{comedian.city}")
  end

end
