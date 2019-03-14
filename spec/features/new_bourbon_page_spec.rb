RSpec.describe "when visiting the new bourbon page" do
  it "has a form" do
    visit "/bourbons/new"

    expect(page).to have_content("Enter a new bourbon!")
  end

  it "takes you back to bourbons page when form is filled" do
    visit "/bourbons/new"
    fill_in "name", with: "Bourbon"
    fill_in "distillery", with: "Bourbon Inc."
    fill_in "location", with: "Fake City, KY"
    fill_in "description", with: "smelly"
    fill_in "proof", with: "91"
    fill_in "expert score", with: "90"
    fill_in "avg rating", with: "3.4"
    fill_in "bottle image", with: "www.asdfasdf.jpg"
  end
end
