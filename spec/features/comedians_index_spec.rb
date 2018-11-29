RSpec.describe "User sees all comedians" do

  describe 'user visits /comedians page' do

    it 'displays all comedians' do
      Comedian.create!(firstname: "Bob", age:40, city:"New York")
      Comedian.create!(firstname: "Rob", age:42, city:"New York")
      Comedian.create!(firstname: "Shnob", age:42, city:"New York")
      Comedian.create!(firstname: "Blob", age:42, city:"New York")
      visit '/comedians'
      expect(page).to have_content("Bob")
      expect(page).to have_content("Shnob")
      expect(page).to have_content("Blob")
      expect(page).to have_content("Rob")
      expect(page).to have_content("Age: 40")
      expect(page).to have_content("Age: 42")
      expect(page).to have_content("City: New York")

    end

    it 'filters data based on query parameters' do
      Comedian.create!(firstname: "Bob", age:40, city:"New York")
      Comedian.create!(firstname: "Rob", age:42, city:"New York")
      Comedian.create!(firstname: "Shnob", age:41, city:"New York")
      Comedian.create!(firstname: "Blob", age:42, city:"New York")
      visit '/comedians?age=42'
      expect(page).to have_content("Rob")
      expect(page).to have_content("Blob")
      
      expect(page).to_not have_content("Bob")
      expect(page).to_not have_content("Shnob")
    end
  end

end
