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
    it "and it also displays each comedian's specials" do
      comedian_1 = Comedian.create!(firstname: "Bob", age:40, city:"New York")
      comedian_2 = Comedian.create!(firstname: "Rob", age:42, city:"New York")

      special_1 = Special.create!(title: "The Best Special", runtime: 100)
      special_2 = Special.create!(title: "The Funny Special", runtime: 100)
      comedian_1.specials << special_1
      comedian_1.specials << special_2

      special_3 = Special.create!(title: "Hot Dog!", runtime: 100)
      special_4 = Special.create!(title: "Sex and other stuff is so funny!", runtime: 100)
      comedian_2.specials << special_3
      comedian_2.specials << special_4

      visit '/comedians'
      expect(page).to have_content(special_1.title)
      expect(page).to have_content(special_2.title)
      expect(page).to have_content(special_3.title)
      expect(page).to have_content(special_4.title)
    end
  end
end
