RSpec.describe "visitor visits comedian page" do
  it "visitor sees a list of comedians and attributes" do
    mitch = Comedian.create(name: 'Mitch Hedberg', age: 48, city: "Los Angeles")
    hannah = Comedian.create(name: 'Hannah Hart', age: 32, city: "Los Angeles")

    visit '/comedians'

    expect(page).to have_content(mitch.name)
    expect(page).to have_content(mitch.age)
    expect(page).to have_content(hannah.name)
    expect(page).to have_content(hannah.age)
  end

  it 'does not repeat cities for comedians' do
    mitch = Comedian.create(name: 'Mitch Hedberg', age: 48, city: "Los Angeles")
    hannah = Comedian.create(name: 'Hannah Hart', age: 32, city: "Los Angeles")
    mamrie = Comedian.create(name: 'Mamrie Hart', age: 32, city: "New York")

      visit '/comedians'

      within(".cities") do
        expect(page).to have_content(mitch.city, count: 1)
        expect(page).to have_content(hannah.city, count: 1)
      end
    end


  it "vistor sees comedians specials listed" do
    mitch = Comedian.create(name: 'Mitch Hedberg', age: 48, city: "Los Angeles")
    hannah = Comedian.create(name: 'Hannah Hart', age: 32, city: "Los Angeles")

    mitch_special = mitch.specials.create(name: "Mitch's special", thumbnail: "", run_time: 0)
    hannah_special = hannah.specials.create(name: "Hannah's special", thumbnail: "", run_time: 90)


    visit '/comedians'

    expect(page).to have_content(mitch_special.name)
    expect(page).to have_content(hannah_special.name)
  end

  it 'vistor sees comedians that match age query' do
    mitch = Comedian.create(name: 'Mitch Hedberg', age: 48, city: "Los Angeles")
    hannah = Comedian.create(name: 'Hannah Hart', age: 34, city: "Los Angeles")
    mamrie = Comedian.create(name: 'Mamrie Hart', age: 32, city: "New York")

    visit "/comedians?age=34"

    expect(page).to have_content(hannah.name)
    expect(page).to_not have_content(mamrie.name)
    expect(page).to_not have_content(mitch.name)
  end
end
