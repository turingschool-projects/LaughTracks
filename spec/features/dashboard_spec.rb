RSpec.describe "an unauthenticated user visits main page" do

  context 'they see link to go to comedian page' do
    describe 'choose link to do to comedian page' do
      it 'navigates to comedian page' do
        visit '/'
        expect(page).to have_current_path('/')

        within '.display' do
          click_link('Comedians')
        end

        expect(page).to have_current_path('/comedians')
      end
    end
  end
end
