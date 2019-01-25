RSpec.describe "comedians index with params" do
  context "as a visitor" do
    context "when I visit '/comedians?age=36'" do
      it "shows only the list of comedians who match the age criteria" do
        Comedian.create(name: 'John Mulaney', age: 36, city: 'Chicago')
        Comedian.create(name: 'Bill Burr', age: 50, city: 'Canton')
        Special.create(title: 'John Mulaney: New in Town', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg', comedian_id: 1)
        Special.create(title: "Bill Burr: I'm Sorry You Feel That Way", run_time: 80, image_url: 'https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg', comedian_id: 2)

        visit '/comedians?age=36'

        expect(page).to have_selector("#comedian_1")
        expect(page).not_to have_selector("#comedian_2")
        within '#comedian_1' do
          expect(page).to have_content(36)
        end
      end
    end
  end
end
