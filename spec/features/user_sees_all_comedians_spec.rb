RSpec.describe 'Comedians page' do
  context 'As a visitor' do
    before(:each) do
      @comedian = Comedian.create(name: "Maddie Jones", city: "New York City", age:24 )
    end
    it 'should see comedian name' do

      visit '/comedians'

      expect(page).to have_content(@comedian.name)
      expect(page).to have_content(@comedian.city)
      expect(page).to have_content(@comedian.age)
    end
    it 'should see comedian specials' do

      special = @comedian.specials.create(name: "Fun", run_time: 61, image: "me")

      visit '/comedians'

      expect(page).to have_content(special.name)
      expect(page).to have_content(special.run_time)

      if special.image
        expect(page).to have_css("img[src='#{special.image}']")
        expect(page).to have_css("img[alt='#{special.name}']")
      end
    end
    it 'should show average age of comedians' do
      @comedian.specials.create(name: "Fun", run_time: 61, image: "me")
      comedian = Comedian.create(name: "jason", city: 'New York City', age: 5 )
      comedian.specials.create(name: "Ian", run_time: 53, image: "hello")


      visit '/comedians'

      expect(page).to have_content("Average Age : #{Comedian.avg_age}")
      expect(page).to have_content("Average Runtime : #{Special.avg_runtime}")
      expect(page).to have_content("Cities : #{Comedian.uniq_city.join(" ")}")
    end
    it 'should show count of specials' do
      @comedian.specials.create(name: "Fun", run_time: 61, image: "me")
      comedian = Comedian.create(name: "jason", city: 'New York City', age: 5 )
      comedian.specials.create(name: "Ian", run_time: 53, image: "hello")

      visit '/comedians'

      expect(page).to have_content("Total Specials : #{Special.total_specials()}")
    end
  end
end
