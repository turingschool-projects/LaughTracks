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
        expect(page).to have_content(36)
        expect(page).to have_content('Chicago')
      end

      within '#comedian_2' do
        expect(page).to have_content('Bill Burr')
        expect(page).to have_content(50)
        expect(page).to have_content('Canton')
      end
    end

    it "shows a list of each comedian's TV specials' name, runtime in minutes, and a thumbnail image" do
      Comedian.create(name: 'John Mulaney', age: 36, city: 'Chicago')
      Comedian.create(name: 'Bill Burr', age: 50, city: 'Canton')
      Special.create(title: 'John Mulaney: New in Town', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg', comedian_id: 1)
      Special.create(title: "Bill Burr: I'm Sorry You Feel That Way", run_time: 80, image_url: 'https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg', comedian_id: 2)
      url_1 = 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg'
      url_2 = 'https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg'

      visit '/comedians'

      within '#comedian_1_specials' do
        expect(page).to have_content('John Mulaney: New in Town')
        expect(page).to have_content(60)
        expect(page).to have_css("img[src*='#{url_1}']")
      end

      within '#comedian_2_specials' do
        expect(page).to have_content("Bill Burr: I'm Sorry You Feel That Way")
        expect(page).to have_content(80)
        expect(page).to have_css("img[src*='#{url_2}']")
      end
    end

    it "shows statistics for the average age of all comedians on the page, the average run length of every special on the page, and a list of unique cities for each comedian on the page" do
      Comedian.create(name: 'John Mulaney', age: 36, city: 'Chicago')
      Comedian.create(name: 'Bill Burr', age: 50, city: 'Canton')
      Special.create(title: 'John Mulaney: New in Town', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg', comedian_id: 1)
      Special.create(title: "Bill Burr: I'm Sorry You Feel That Way", run_time: 80, image_url: 'https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg', comedian_id: 2)

      visit '/comedians'

      within '#statistics' do
        expect(page).to have_content(43)
        expect(page).to have_content(70)
        expect(page).to have_content("Chicago, Canton")
      end
    end

    it "shows a count of TV specials for each comedian and the Statistics show the total count of TV specials for every comedian" do
      Comedian.create(name: 'John Mulaney', age: 36, city: 'Chicago')
      Comedian.create(name: 'Bill Burr', age: 50, city: 'Canton')
      Special.create(title: 'John Mulaney: New in Town', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg', comedian_id: 1)
      Special.create(title: "Bill Burr: I'm Sorry You Feel That Way", run_time: 80, image_url: 'https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg', comedian_id: 2)
      Special.create(title: 'Bill Burr: Walk Your Way Out', run_time: 77, image_url: 'https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_UY268_CR10,0,182,268_AL_.jpg', comedian_id: 2)

      visit '/comedians'
      within '#comedian_1_specials' do
        expect(page).to have_content(1)
      end

      within '#comedian_2_specials' do
        expect(page).to have_content(2)
      end

      within '#statistics' do
        expect(page).to have_content(3)
      end
    end
  end
end
