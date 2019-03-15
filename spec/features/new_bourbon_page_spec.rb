RSpec.describe "when visiting the new bourbon page" do
  it "has a form" do
    visit "/bourbons/new"

    expect(page).to have_content("Enter a new bourbon!")
  end

  xit "takes you back to bourbons page when form is filled" do
    visit "/bourbons/new"
    fill_in "bourbon[name]", with: "Bourbon"
    fill_in "bourbon[distillery]", with: "Bourbon Inc."
    fill_in "bourbon[location]", with: "Fake City, KY"
    fill_in "bourbon[description]", with: "smelly"
    fill_in "bourbon[proof]", with: "91"
    fill_in "bourbon[expert_score]", with: "90"
    fill_in "bourbon[avg_rating]", with: "3.4"

    # expect...something
  end

  xit "capitalizes location" do
    visit "/bourbons/new"
    fill_in "bourbon[name]", with: "Bourbon"
    fill_in "bourbon[distillery]", with: "Bourbon Inc."
    fill_in "bourbon[location]", with: "Fake City, KY"
    fill_in "bourbon[description]", with: "smelly"
    fill_in "bourbon[proof]", with: "91"
    fill_in "bourbon[expert_score]", with: "90"
    fill_in "bourbon[avg_rating]", with: "3.4"

    # expect something but with the location capitalized
  end

end
