RSpec.describe "visitor visit comedian page" do
  it "visitor sees a list of comedians and attributes" do
    mitch = Comedian.create(name: 'Mitch Hedberg', age: 48, city: "Los Angeles")
    hannah = Comedian.create(name: 'Hannah Hart', age: 32, city: "Los Angeles")

    visit '/comedians'

    expect(page).to have_content(mitch.name)
    expect(page).to have_content(mitch.age)
    expect(page).to have_content(hannah.name)
    expect(page).to have_content(hannah.age)
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


end
