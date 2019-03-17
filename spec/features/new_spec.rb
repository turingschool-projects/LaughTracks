RSpec.describe Special do
  describe 'New Comedian Form workflow' do
    it 'should add a new comedian to the database' do
      within 'new-comedian' do
        visit '/comedians/new'
        fill_in '#name', with: 'My New Comedian'
        fill_in '#age', with: '35'
        fill_in '#birthplace', with: 'Denver, CO'
        click_on 'submit'
      end
      
      expect(current_path).to be '/comedians'
      expect(page).to have_content('My New Comedian')
    end
  end
end
