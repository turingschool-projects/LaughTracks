RSpec.describe 'a visitor visits the statistics portion of the comedians page' do
  it 'should show a list of stats at the top' do
    comedian_1 = Comedian.create(name:'John Doe', age: 45, city: 'Westfield')
    comedian_2 = Comedian.create(name:'Jane Doe', age: 50, city: 'Westfield')
    comedian_3 = Comedian.create(name:'Sissy Spacey', age: 32, city: 'Concord')
    one_special = Special.create(name: "The Original Kings of Comedy", length: 72, url: "image.jpg")
    two_special = Special.create(name: "A Tribute to Bernie Mac", length: 60, url: "another_image.jpg")
    comedian_1.specials << one_special
    comedian_1.specials << two_special
    visit '/comedians'

    within("#statistics") do
      expect(page).to have_content(42.33)
    end
    within("#statistics") do
      expect(page).to have_content(66)
    end
    within("#statistics") do
      expect(page).to have_content("Westfield Concord")
    end
    within("#statistics") do
      expect(page).to have_content("Total Number of Specials: 2")
    end
  end
  it 'should show a list of stats at the top for a filtered set of comedians' do
    comedian_1 = Comedian.create(name:'John Doe', age: 44, city: 'Westfield')
    comedian_2 = Comedian.create(name:'Jane Doe', age: 50, city: 'Westfield')
    comedian_3 = Comedian.create(name:'Sissy Spacey', age: 32, city: 'Concord')
    one_special = Special.create(name: "The Original Kings of Comedy", length: 72, url: "image.jpg")
    two_special = Special.create(name: "A Tribute to Bernie Mac", length: 60, url: "another_image.jpg")
    comedian_1.specials << one_special
    comedian_2.specials << two_special

    visit '/comedians?age=44'

    within("#statistics") do
      expect(page).to have_content(44)
    end
    within("#statistics") do
      expect(page).to have_content("Westfield")
    end
    # within("#statistics") do
    #   expect(page).to have_content("Total Number of Specials: 1")
    # end
    within("#statistics") do
      expect(page).to have_content("Average Special Run Length: 72")
    end
  end
end
