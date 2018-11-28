RSpec.describe 'App welcome page' do
  context 'as a vistor' do
    it 'shows appropriate elements' do
      visit '/'

      expect(page).to have_content()
      expect(page).to have_content()
      expect(page).to have_content()
      expect(page).to have_content()
    end
  end
end
