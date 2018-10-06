RSpec.describe 'a visitor visits the comedians page' do
  it 'should allow me to view one comedians stats' do
    comedian = Comedian.create(name: "Dave Funny", age: 45, city: "D.C.")
    comedian = Comedian.create(name: "Super Hilarous", age:13, city: "Denver")
    special = Special.create(name: "The Original Kings of Comedy", length: 72, url: "image.jpg")
    comedian.specials << special
    visit '/comedians'
    click_link('Dave Funny')

    expect(current_path).to eq('/comedians/1')
    expect(page).to have_content('Dave Funny')
    expect(page).not_to have_content("Super Hilarious")
  end
end
