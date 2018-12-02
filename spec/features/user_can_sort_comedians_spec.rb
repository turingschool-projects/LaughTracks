RSpec::Matchers.define :appear_before do |later_content|
  match do |earlier_content|
    page.body.index(earlier_content) < page.body.index(later_content)
  end
end

RSpec.describe 'Comedians sorted by attributes' do
  before :each do
    @trevor = Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg, South Africa')
    @jerry = Comedian.create(name: 'Jerry Seinfeld', age: 64, city: 'Brooklyn, New York City, New York')
    @bill = Comedian.create(name: 'Bill Hicks', age: 32, city: 'Little Rock, Arkansas')

    @tr_1 = Special.create(name: 'Trevor Noah: Son of Patricia', comedian_id: 1, run_time_minutes: 63, image_url: 'https://m.media-amazon.com/images/M/MV5BMTU4MTA5NjMyNl5BMl5BanBnXkFtZTgwNDY0OTI4NjM@._V1_SY1000_CR0,0,675,1000_AL_.jpg')
    @tr_2 = Special.create(name: 'Trevor Noah: Afraid of the Dark', comedian_id: 1, run_time_minutes: 67, image_url: "https://m.media-amazon.com/images/M/MV5BMTZhNjNjNGUtYTc2Ni00ZDc4LWJjNDMtYjVlOTI5OGI5YzE5XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
    @tr_3 = Special.create(name: 'Trevor Noah: Lost in Translation', comedian_id: 1, run_time_minutes: 62, image_url: "https://m.media-amazon.com/images/M/MV5BMmNjYmY3N2QtOTUwNC00ZjI4LWI0MzUtZGRiOTg0M2U1MTYyXkEyXkFqcGdeQXVyMjQ4NDAyMDI@._V1_.jpg")
    @tr_4 = Special.create(name: "Trevor Noah: Pay Back the Funny", comedian_id: 1, run_time_minutes: 84, image_url: "https://m.media-amazon.com/images/M/MV5BYmU1NWU3YmYtNjg1MS00YTU1LWE5OGYtZTY2NWNlNjA0YWYyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_CR0,0,694,1000_AL_.jpg")

    @jr_1 = Special.create(name: "Jerry Seinfeld: 'I'm Telling You for the Last Time", comedian_id: 2, run_time_minutes: 75, image_url: 'https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg')
    @jr_2 = Special.create(name: 'Stand-Up Confidential', comedian_id: 2, run_time_minutes: 55, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/45/Stand-Up_Confidential_video_box.jpg/220px-Stand-Up_Confidential_video_box.jpg')
    @jr_3 = Special.create(name: 'Jerry Before Seinfeld', comedian_id: 2, run_time_minutes: 61, image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Jerry_Before_Seinfeld_poster.jpg/220px-Jerry_Before_Seinfeld_poster.jpg')

    @b_1 = Special.create(name: 'Bill Hicks: Revelations', comedian_id: 3, run_time_minutes: 57, image_url: 'https://m.media-amazon.com/images/M/MV5BMjM1OTAwMDE3N15BMl5BanBnXkFtZTgwNjkzMzYwNzE@._V1_.jpg')
    @b_2 = Special.create(name: 'Bill Hicks: Relentless', comedian_id: 3, run_time_minutes: 61, image_url: 'https://m.media-amazon.com/images/M/MV5BMjAwNDYyMjg1MV5BMl5BanBnXkFtZTcwNjEwMjEzMQ@@._V1_.jpg')
  end

  context 'as a user' do
    it 'should return comedians sorted by name' do
      visit "/comedians?sort=name"

      expect("comedian-info-#{@bill.id}").to appear_before("comedian-info-#{@jerry.id}")
      expect("comedian-info-#{@jerry.id}").to appear_before("comedian-info-#{@trevor.id}")
    end
    it 'should return comedians sorted by age' do
      visit "/comedians?sort=age"

      expect("comedian-info-#{@bill.id}").to appear_before("comedian-info-#{@trevor.id}")
      expect("comedian-info-#{@trevor.id}").to appear_before("comedian-info-#{@jerry.id}")
    end
    it 'should return comedians sorted by city' do
      visit "/comedians?sort=city"

      expect("comedian-info-#{@jerry.id}").to appear_before("comedian-info-#{@trevor.id}")
      expect("comedian-info-#{@trevor.id}").to appear_before("comedian-info-#{@bill.id}")
    end
  end
end
