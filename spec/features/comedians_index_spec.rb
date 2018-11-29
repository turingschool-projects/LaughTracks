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
      comic_1 = Comedian.create!(firstname: "Bob", age:40, city:"New York")
      comic_2 = Comedian.create!(firstname: "Rob", age:42, city:"Philly")
      comic_3 = Comedian.create!(firstname: "Shnob", age:41, city:"Littleton")
      comic_4 = Comedian.create!(firstname: "Blob", age:42, city:"New York")


      comic_2.specials.create(title: "Life is Weird", runtime: 60)

      comic_3.specials.create(title: "What's going on?", runtime: 150)

      comic_4.specials.create(title: "ha", runtime: 100)
      comic_4.specials.create(title: "haha", runtime: 150)

      # <p>Cities: <%= @cities.join(", ") %></p>
      # <p>Average Age: <%= @average_age.to_i %></p>
      # <p>Total Specials: <%= @total_specials %></p>
      # <p>Average Runtime of Specials:


      visit '/comedians?age=42'
      save_and_open_page

      expect(page).to have_content("Rob")
      expect(page).to have_content("Blob")
      expect(page).to have_content("Cities: Philly, New York")
      expect(page).to have_content("Average Age: 42")
      expect(page).to have_content("Total Specials: 3")
      expect(page).to have_content("Average Runtime of Specials: 103")

      expect(page).not_to have_content("Bob")
      expect(page).not_to have_content("Shnob")
    end
  end

end
