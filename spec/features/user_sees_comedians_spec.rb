RSpec.describe 'a visitor visits the comedians page' do
  it 'should show a list of all comedians' do
    comedian = Comedian.create(name: "Dave Funny", age: 45, city: "D.C.")
    visit '/comedians'

    within("#comedian_#{comedian.id}") do
      expect(page).to have_content('Dave Funny')
    end
    within("#comedian_#{comedian.id}") do
      expect(page).to have_content(45)
    end
    within("#comedian_#{comedian.id}") do
      expect(page).to have_content('D.C.')
    end
  end
  it 'should show a list of 34 year old comedians' do
    comedian_1 = Comedian.create(name: "Dave Funny", age: 45, city: "D.C.")
    comedian_2 = Comedian.create(name: "Donna Giggles", age: 34, city: "D.C.")
    comedian_3 = Comedian.create(name: "Barb Guffaw", age: 34, city: "Denver")
    visit '/comedians?age=34'

    within("#comedian_#{comedian_2.id}") do
      expect(page).to have_content('Donna Giggles')
    end
    within("#comedian_#{comedian_3.id}") do
      expect(page).to have_content('Barb Guffaw')
    end
  end
end
