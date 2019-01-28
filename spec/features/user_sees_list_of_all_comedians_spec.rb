RSpec.describe 'as a visitor', type: :feature do
  before :each do
    @kevin = Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, Pennsylvania", image_url: "https://m.media-amazon.com/images/M/MV5BMTY4OTAxMjkxN15BMl5BanBnXkFtZTgwODg5MzYyMTE@._V1_UX214_CR0,0,214,317_AL_.jpg")
    @jim = Comedian.create(name: "Jim Gaffigan", age: 52, city: "Elgin, Illinois", image_url: "https://m.media-amazon.com/images/M/MV5BZTVhOGIwMWEtNmQxOC00NjRhLWJlYTYtNzdmZGIyODE2MjliXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_UY317_CR21,0,214,317_AL_.jpg")
    @kumail = Comedian.create(name: "Kumail Nanjiani", age: 40, city: "Karachi, Pakistan", image_url: "https://m.media-amazon.com/images/M/MV5BMTU3Mjk3NTMxMF5BMl5BanBnXkFtZTcwODA1MTU0NQ@@._V1_UY317_CR12,0,214,317_AL_.jpg")
    @what_now = Special.create(name: "What Now?", run_time: 96, image_url: "https://occ-0-586-590.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABfTZkygAHHo8l7jhFArpM9Nw9pEF7S1rAPTdSmdWtGHH02M4KEoCejkLhuueS_Zr4_-tZvsI91DPztM8sS2dMzMpPCOjPjl1wPdvlWXb3rKJOIxCI4KCP0OxwWWVuZoI_y4Ck7Jk7_I.webp", comedian_id: 1)
    @cinco = Special.create(name: "Cinco", run_time: 73, image_url: "https://occ-0-586-590.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABaHcDuErQLH1haRw5zY3EotSZqYT4KZCeDYk8Zij-kAnktOHxfC-PbdKdWi9agT_qYEEbKuczEW9CW-o9boafm2EtfT-_hxka4WOUr-5k057M03FvEI7oSIWCGWyPYvcIo1_w4z4bA.jpg", comedian_id: 2)
  end

  it "should display a list of all comedian's info" do
    visit '/comedians'

    within '#comedian-section' do
      expect(page).to have_content(@kevin.name)
      expect(page).to have_content(@kevin.age)
      expect(page).to have_content(@kevin.city)
      expect(page).to have_xpath("//img[@src='https://m.media-amazon.com/images/M/MV5BMTY4OTAxMjkxN15BMl5BanBnXkFtZTgwODg5MzYyMTE@._V1_UX214_CR0,0,214,317_AL_.jpg']")

    end
  end

  it "should display a list of all special's info" do
    visit '/comedians'

    within "#comedian-section" do
      expect(page).to have_content(@what_now.name)
      expect(page).to have_content(@what_now.run_time)
      expect(page).to have_xpath("//img[@src='https://occ-0-586-590.1.nflxso.net/dnm/api/v5/rendition/412e4119fb212e3ca9f1add558e2e7fed42f8fb4/AAAABfTZkygAHHo8l7jhFArpM9Nw9pEF7S1rAPTdSmdWtGHH02M4KEoCejkLhuueS_Zr4_-tZvsI91DPztM8sS2dMzMpPCOjPjl1wPdvlWXb3rKJOIxCI4KCP0OxwWWVuZoI_y4Ck7Jk7_I.webp']")
    end
  end

  it "should display all the statistics of all comedians" do
    visit '/comedians'

    within '#statistics' do
      # save_and_open_page

      expect(page).to have_content("Statistics")
      expect(page).to have_content("Average Age: 44")
      expect(page).to have_content("Average Special Runtime: 85")
      expect(page).to have_content("Total Specials: 2")
      expect(page).to have_content("Comedian Cities: ")
    end
  end

  
end
