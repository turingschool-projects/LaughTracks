RSpec.describe 'as a visitor', type: :feature do
  it 'should see a form appear' do
    visit '/comedians/new'

    within '#new-comedian' do
      expect(page).to have_content("Add A New Comedian")
      expect(page).to have_content("Comedian Name")
      expect(page).to have_content("Comedian Age")
      expect(page).to have_content("Comedian City")
    end
  end

  context 'when they fill out a form and hit submit' do
    it 'should add a new comedian and redirect them to the comedians page' do
      visit '/comedians/new'

      within '#new-comedian-form' do
        fill_in("comedian[name]", with: "Scott Thomas")
        fill_in("comedian[age]", with: "30")
        fill_in("comedian[city]", with: "Denver")
        click_on("Add Comedian")
        expect(current_path).to eq('/comedians')
      end
    end

    it 'should see the new comedian when they are redirected' do
      visit '/comedians/new'
      within '#new-comedian-form' do
        fill_in("comedian[name]", with: "Scott Thomas")
        fill_in("comedian[age]", with: "30")
        fill_in("comedian[city]", with: "Denver")
        click_on("Add Comedian")
      end
        expect(page).to have_content("Scott Thomas")
        expect(page).to have_content("Average Age: 30")
        expect(page).to have_content("Denver")
        expect(page).to have_content("Total Specials: 0")
        expect(page).to have_xpath("//img[@src='https://m.media-amazon.com/images/G/01/imdb/images/nopicture/medium/name-2135195744._CB470041852_.png']")
    end
  end
end
