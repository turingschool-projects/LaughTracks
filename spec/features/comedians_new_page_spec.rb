RSpec.describe "comedians index page" do
  context "as a visitor" do
    context "when I visit '/comedians/new'" do
      it "shows a form to input a new comedian into the database" do

        visit '/comedians/new'

        within '#new_comedian_form' do
          expect(page).to have_field('Name')
          expect(page).to have_field('Age')
          expect(page).to have_field('City')
          expect(page).to have_button('Submit')
        end
      end

      context "and I input information for a comedian's name, age, and city successfully" do
        it "submits the comedian, then redirects to /comedians with the new comedian's data displayed" do

          visit '/comedians/new'

          within '#new_comedian_form' do
            fill_in 'Name', with: 'test_name'
            fill_in 'Age', with: '0'
            fill_In 'City', with: 'test_city'
            click_button 'Submit'
          end

          expect.(current_path).to eq '/comedians'

          within '#comedian_1' do
            expect.page.to have_content 'test_name'
            expect.page.to have_content '0'
            expect.page.to have_content 'test_city'
          end
        end
      end
    end
  end
end
