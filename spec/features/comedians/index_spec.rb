RSpec.describe 'comedian index workflow' do
  context 'as a visitor' do
    before(:each) do
      @dc = Comedian.create(
          name: "Dave Chappelle", 
          age: 45, 
          city: "Washington, D.C.", 
          head_shot: "https://media2.fdncms.com/portmerc/imager/u/original/10749418/mwbw-chappelle.jpg"
        )

      @dc_special = @dc.specials.create(
        title: "Block Party", 
        length: 103, 
        image_url: "https://m.media-amazon.com/images/M/MV5BMTI5ODAyNDM3OV5BMl5BanBnXkFtZTcwMjQ3NTIzMQ@@._V1_.jpg"
      )

      @js = Comedian.create(
        name: "Jerry Seinfeld", 
        age: 64, 
        city: "Portsmouth", 
        head_shot: "https://i.pinimg.com/474x/8e/cb/ab/8ecbab3c50c7d279b3ac940004302258--jerry-seinfeld-white-people.jpg"
      )

      @js_special = @js.specials.create(
        title: "I'm Telling You For The Last Time", 
        length: 75, 
        image_url: "https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg"
      )
    end 

    it 'should see all header contents' do
      visit '/comedians'

      within ".header" do
        expect(page).to have_content("Laugh Tracks")
        expect(page).to have_content("It is a curious fact that people are never so trivial as when they take themselves seriously.")
        expect(page).to have_content("Oscar Wilde")
      end 
    end 

    it 'should see all stats contents' do 
      visit '/comedians'

      within "#stats" do
        expect(page).to have_content("Statistics")
        expect(page).to have_content("Average Age: #{Comedian.average_age.to_i}")
        expect(page).to have_content("Total No. of TV Specials: #{Special.count}")
        expect(page).to have_content("Average Length: #{Special.average_length.to_i}")
        expect(page).to have_content("Cities: #{Comedian.unique_cities.join(", ")}")
      end 
    end 

    it 'should see all comedian contents' do
      visit '/comedians'

      within "#comedian-#{@dc.id}" do
        expect(page).to have_css("img[src*='#{@dc.head_shot}']")
        expect(page).to have_content("Name: #{@dc.name}")
        expect(page).to have_content("Age: #{@dc.age}")
        expect(page).to have_content("City: #{@dc.city}")
        expect(page).to have_content("TV Specials: #{@dc.specials.count}")
      end

      within "#comedian-#{@js.id}" do
        expect(page).to have_css("img[src*='#{@js.head_shot}']")
        expect(page).to have_content("Name: #{@js.name}")
        expect(page).to have_content("Age: #{@js.age}")
        expect(page).to have_content("City: #{@js.city}")
        expect(page).to have_content("TV Specials: #{@js.specials.count}")
      end
    end

    it 'should see all specials contents' do 
      visit '/comedians'

      within "#comedian-#{@dc_special.id}" do
        expect(page).to have_css("img[src*='#{@dc_special.image_url}']")
        expect(page).to have_content(@dc_special.title)
        expect(page).to have_content("Length: #{@dc_special.length} mins")
      end 

      within "#comedian-#{@js_special.id}" do
        expect(page).to have_css("img[src*='#{@js_special.image_url}']")
        expect(page).to have_content(@js_special.title)
        expect(page).to have_content("Length: #{@js_special.length} mins")
      end 
    end 

    it 'should see all contents for comedians who match age query' do
      visit 'comedians?age=64' 

      within "#comedian-#{@js.id}" do
        expect(page).to have_css("img[src*='#{@js.head_shot}']")
        expect(page).to have_content("Name: #{@js.name}")
        expect(page).to have_content("Age: #{@js.age}")
        expect(page).to have_content("City: #{@js.city}")
        expect(page).to have_content("TV Specials: #{@js.specials.count}")
        
        expect(page).to_not have_content("Name: #{@dc.name}")
      end

      within "#comedian-#{@js_special.id}" do
        expect(page).to have_css("img[src*='#{@js_special.image_url}']")
        expect(page).to have_content(@js_special.title)
        expect(page).to have_content("Length: #{@js_special.length} mins")

        expect(page).to_not have_content(@dc_special.title)
      end
    end 
  end
end 
