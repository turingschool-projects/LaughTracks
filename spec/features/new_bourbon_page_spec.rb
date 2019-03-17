RSpec.describe "when visiting the new bourbon page" do
  it "has a form" do
    visit "/bourbons/new"
    expect(page).to have_content("Enter a new bourbon!")
  end

  it "has a name input" do
    visit "/bourbons/new"
    expect(page).to have_content("Name:")
  end

  it "has a distillery input" do
    visit "/bourbons/new"
    expect(page).to have_content("Distillery:")
  end

  it "has a location input" do
    visit "/bourbons/new"
    expect(page).to have_content("Location:")
  end

  it "has a description input" do
    visit "/bourbons/new"
    expect(page).to have_content("Description:")
  end

  it "has a proof input" do
    visit "/bourbons/new"
    expect(page).to have_content("Proof:")
  end

  it "has a expert_score input" do
    visit "/bourbons/new"
    expect(page).to have_content("Expert Score:")
  end

  it "has an avg_rating input" do
    visit "/bourbons/new"
    expect(page).to have_content("Average Rating:")
  end

  it "takes you back to bourbons page when form is filled" do
    visit "/bourbons/new"
    fill_in "bourbon[name]", with: "Bourbon"
    fill_in "bourbon[distillery]", with: "Bourbon Inc."
    fill_in "bourbon[location]", with: "Fake City, KY"
    fill_in "bourbon[description]", with: "smelly"
    fill_in "bourbon[proof]", with: "91"
    fill_in "bourbon[expert_score]", with: "90"
    fill_in "bourbon[avg_rating]", with: "3.4"

    expect(page).to have_xpath("//input")
  end
end
