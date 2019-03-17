RSpec.describe 'comedian new workflow' do
  context 'as a visitor' do
    it 'should see a form to add new comedian' do
      visit '/comedians/new'

      expect(page).to have_content("Add Comedian")
      expect(page).to have_css("form[action='/comedians']")
      expect(page).to have_css("form[method='post']")
    end 

    it 'should be able to add a new comedian and see on /comedian' do
      visit '/comedians/new'

      co = Comedian.create(name: "Conan O'Brien", age: 55, city: "Brookline")
    
      name = "Conan O'Brien"
      age = 55
      city = "Brooklin"

      fill_in 'name', with: "name"
      fill_in 'age', with: "age"
      fill_in 'city', with: "city"
      click_button "Submit"

      expect(current_path).to eq('/comedians')

      within "#comedian-#{co.id}" do 
        expect(page).to have_content("Name: #{co.name}")
        expect(page).to have_content("Age: #{co.age}")
        expect(page).to have_content("City: #{co.city}")
      end 
    end  
  end 
end 
