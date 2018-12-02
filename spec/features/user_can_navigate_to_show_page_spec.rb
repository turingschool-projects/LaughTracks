RSpec.describe 'Comedian show page' do
  before :each do
    @jerry = Comedian.create(name: 'Jerry Seinfeld', age: 64, city: 'Brooklyn, New York City, New York')
    @bill = Comedian.create(name: 'Bill Hicks', age: 32, city: 'Little Rock, Arkansas')

    @bill_1 = Special.create(name: 'Bill Hicks: Revelations', comedian_id: 2, run_time_minutes: 57, image_url: 'https://m.media-amazon.com/images/M/MV5BMjM1OTAwMDE3N15BMl5BanBnXkFtZTgwNjkzMzYwNzE@._V1_.jpg')
    @bill_2 = Special.create(name: 'Bill Hicks: Relentless', comedian_id: 2, run_time_minutes: 61, image_url: 'https://m.media-amazon.com/images/M/MV5BMjAwNDYyMjg1MV5BMl5BanBnXkFtZTcwNjEwMjEzMQ@@._V1_.jpg')

    @jerry_1 = Special.create(name: "Jerry Seinfeld: 'I'm Telling You for the Last Time", comedian_id: 1, run_time_minutes: 75, image_url: 'https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg')
    @jerry_2 = Special.create(name: 'Stand-Up Confidential', comedian_id: 1, run_time_minutes: 55, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/45/Stand-Up_Confidential_video_box.jpg/220px-Stand-Up_Confidential_video_box.jpg')
    @jerry_3 = Special.create(name: 'Jerry Before Seinfeld', comedian_id: 1, run_time_minutes: 61, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Jerry_Before_Seinfeld_poster.jpg/220px-Jerry_Before_Seinfeld_poster.jpg')
  end

  context 'as a user' do
    it "has working links to each comedian's show page" do
      visit '/comedians'

      expect(page).to have_css("#show-c-#{@jerry.id}")
      expect(page).to have_css("#show-c-#{@bill.id}")

      click_link "show-c-#{@jerry.id}"
      expect(current_path).to eq("/comedians/1")

      visit "/comedians"

      click_link "show-c-#{@bill.id}"
      expect(current_path).to eq("/comedians/2")
    end

    xit 'has info for one comedian only on show page' do
      visit "/comedians/1" do
        within "#comedian-info-#{@jerry.id}" do
          expect(page).to have_content("Comedian: #{@jerry.name}")
          expect(page).to have_content("Age: #{@jerry.age}")
          expect(page).to have_content("Hometown: #{@jerry.city}")
          expect(page).to have_content("Number of specials: #{@jerry.specials.count}")
        end
      end
    end
  end
end
