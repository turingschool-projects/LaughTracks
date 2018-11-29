RSpec.describe "Comedian's index displays statistics" do
  it 'displays average_comedian age' do
    Comedian.create!(firstname: "Bob", age:40, city:"New York")
    Comedian.create!(firstname: "Rob", age:41, city:"New York")
    Comedian.create!(firstname: "Shnob", age:42, city:"New York")

    visit '/comedians'

    expect(page).to have_content("Average Age: 41")
  end
  it 'displays a unique list of city' do
    Comedian.create!(firstname: "Bob", age:40, city:"New York")
    Comedian.create!(firstname: "Rob", age:41, city:"New York")
    Comedian.create!(firstname: "Shnob", age:42, city:"New York")
    Comedian.create!(firstname: "Greg", age:42, city:"Denver")
    Comedian.create!(firstname: "Meg", age:42, city:"Denver")

    visit '/comedians'
    
    expect(page).to have_content("Cities: New York, Denver")
  end
end
