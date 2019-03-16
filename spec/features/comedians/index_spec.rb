RSpec.describe "an unauthenticated user visits comedians page" do
  before(:each) do
    @c1 = Comedian.create(name: 'Mitch Hedberg', age: 50, city:"Los Angeles")
    @c2 = Comedian.create(name: 'Magic Mike', age: 50, city:"Los Angeles")
    @c3 = Comedian.create(name: 'Danger Dave', age: 48, city:"San Diego")
    @c4 = Comedian.create(name: 'Sunny Stella', age: 48, city:"Los Angeles")

    @s1 = @c1.specials.create(title: 'Mitch Hedberg: Funny Stuff', run_time: 10)
    @s2 = @c2.specials.create(title: 'Magic Mike: Funny Stuff', run_time: 2)
    @s3 = @c2.specials.create(title: 'Danger Jim: Funny Stuff', run_time: 3)
    @s4 = @c3.specials.create(title: 'Sunny Stella: Funny Stuff', run_time: 5)
  end

  context 'they see statistics for totals' do
    it 'and correct average run time displayed' do
      visit '/comedians'
      within ".statistics" do
        expect(page).to have_content("Average Runtime: 5")
      end
    end

    it 'and correct average age displayed' do
      visit '/comedians'
      within ".statistics" do
        expect(page).to have_content("Average Age: 49")
      end
    end

    it 'and correct unique cities displayed' do
      visit '/comedians'
      within ".statistics" do
        expect(page).to have_content("Unique Cities:\nLos Angeles\nSan Diego")
      end
    end

    it 'and correct total tv specials displayed' do
      visit '/comedians'
      within ".statistics" do
        expect(page).to have_content("TV Specials: ")
      end
    end
  end

  context 'see that each comedian has correct number of specials' do
    it 'views correct tv specials for each comedian' do
      visit '/comedians'

      within '.comedian-profile#magic-mike' do
        expect(page).to have_content('Number of Specials: 2')
      end

      within '.comedian-profile#mitch-hedberg' do
        expect(page).to have_content('Number of Specials: 1')
      end
    end
  end

  context 'they input info in the statistics inputs' do
    describe 'user inputs age and page displays correctly' do
      it 'shows correct number of comedians' do
        visit '/comedians'

        within '#age-input' do
          fill_in('age', with: 50)
          click_button('age-submit')
        end

        within '.main' do
          expect(page).to have_css('.comedian-profile', count: 2)
          expect(page).to_not have_content('Danger Dave')
        end
      end

      it 'page statistics update correctly' do
        visit '/comedians'

        within '#age-input' do
          fill_in('age', with: 50)
          click_button('age-submit')
        end

        within '.statistics' do
          expect(page).to have_content('Average Runtime: 5')
          expect(page).to have_content('Average Age: 50')
          expect(page).to have_content('TV Specials: 3')
        end
      end
    end
  end

  context 'user inputs new comedian' do
    it 'shows main page with new comedian added' do
      visit '/comedians'

      click_button("Add Comedian")

      within 'form' do
        fill_in('name', with: 'Michael Jackson' )
        fill_in('age', with: 30 )
        fill_in('city', with: 'Huntington Beach' )
        click_button('Submit')
      end
      
      expect(page).to have_current_path('/comedians')

      within '.main' do
        expect(page).to have_content('Michael Jackson')
        expect(page).to have_content('Huntington Beach')
      end
    end
  end
end
