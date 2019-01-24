RSpec.describe "comedians index page" do
  context "as a visitor"  do
    it "shows the name, age, and home city of each comedian" do
      Comedian.create(name: 'John Mulaney', age: 36, city: 'Chicago')
      Comedian.create(name: 'Bill Burr', age: 50, city: 'Canton')
      Special.create(title: 'John Mulaney: New in Town', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg', comedian_id: 1)
      Special.create(title: "Bill Burr: I'm Sorry You Feel That Way", run_time: 80, image_url: 'https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg', comedian_id: 2)

      visit '/comedians'

      within '#comedian_1' do
        expect(page).to have_content('John Mulaney')
      end

      within '#comedian_2' do
        expect(page).to have_content(50)
      end
    end

    it "shows a list of each comedian's TV specials' names" do
    end

    it "shows a list of each special's run-time length in minutes, and a thumbnail image" do
    end

    it "shows statistics for the average age of all comedians on the page, the average run length of every special on the page, and a list of unique cities for each comedian on the page" do
    end

    it "shows a count of TV specials for each comedian and the Statistics show the total count of TV specials for every comedian" do
    end
  end
end
