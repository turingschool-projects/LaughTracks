RSpec.describe "comedians index with params" do
  context "as a visitor" do
    context "when I visit '/comedians?age=36'" do
      it "shows only the list of comedians who match the age criteria" do
        Comedian.create(name: 'Anthony Jeselnik', age: 40, city: 'Pittsburgh')
        Comedian.create(name: 'Mike Birbiglia', age: 40, city: 'Shrewsbury')

        visit '/comedians?age=40'

        expect(page).to have_selector("#comedian_1")
        expect(page).to have_selector("#comedian_2")
        expect(page).not_to have_selector("#comedian_3")
        within '#comedian_1' do
          expect(page).to have_content(40)
        end
      end

      it "shows only the statistics for the comedians listed on the page" do
        Comedian.create(name: 'John Mulaney', age: 36, city: 'Chicago')
        Comedian.create(name: 'Anthony Jeselnik', age: 40, city: 'Pittsburgh')
        Comedian.create(name: 'Mike Birbiglia', age: 40, city: 'Shrewsbury')
        Special.create(title: 'John Mulaney: New in Town', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg', comedian_id: 1)
        Special.create(title: 'Anthony Jeselnik: Caligula', run_time: 59, image_url: 'https://m.media-amazon.com/images/M/MV5BYWExMjQ2NGQtNWYxMS00YTA4LTk1ZjYtN2RlMWI1M2ViZWQ0XkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_UY268_CR5,0,182,268_AL_.jpg', comedian_id: 2)
        Special.create(title: 'Mike Birbiglia: What I Should Have Said Was Nothing', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BMTk0NzY2NzM5Ml5BMl5BanBnXkFtZTcwNjE2Mjg2MQ@@._V1_UY268_CR3,0,182,268_AL_.jpg', comedian_id: 3)

        visit '/comedians?age=40'
        within '#statistics' do
          expect(page).to have_content(40)
          expect(page).to have_content(59.5)
          expect(page).to have_content('Pittsburgh, Shrewsbury')
        end
      end
    end
  end
end
