RSpec.describe 'comedian index workflow' do
  context 'as a visitor' do
    it 'should show all comedian content' do

      comedian_1 = Comedian.create(name: "Bill Burr", age: 50, birthplace: "Canton, MA", image_url: "https://image.masslive.com/home/mass-media/width960/img/entertainment/photo/nashville-comedy-festival-21d347107e975672.jpg")
      comedian_2 = Comedian.create(name: "Joe Rogan", age: 51, birthplace: "Newark, NJ", image_url: "https://www.maxim.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1400/MTQ4NDk2MjMzNzY0MjM0Nzc2/joe-rogan.webp")
      comedian_3 = Comedian.create(name: "Louis C.K.", age: 51, birthplace: "Washington, D.C.", image_url: "https://media1.fdncms.com/pittsburgh/imager/u/blog/13239255/louis_ck_kuwait_crop_cropped.jpg?cb=1548183367")

      special_1 = Special.create(name: "Walk Your Way Out", runtime_mins: 77, comedian_id: 1, image_url: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_.jpg")
      special_2 = Special.create(name: "Strange Times", runtime_mins: 63, comedian_id: 2, image_url: "https://m.media-amazon.com/images/M/MV5BNzc2Mzg5YmMtMzM1NC00NDgwLTljYWQtZDdkNzBmNjZkNmJhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
      special_3 = Special.create(name: "Oh My God", runtime_mins: 58, comedian_id: 3, image_url: "https://m.media-amazon.com/images/M/MV5BMjQ4NjQwOTYzNl5BMl5BanBnXkFtZTcwNjU2NjczOQ@@._V1_.jpg")


      visit '/comedians'

    within "#comedian-#{comedian_1.id}" do

      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content("Age: #{comedian_1.age}")
      expect(page).to have_content("Birthplace: #{comedian_1.birthplace}")
      # expect(page).to have_xpath(src=comedian_1.image_url)

    end

    within "#comedian-#{comedian_2.id}" do

      expect(page).to have_content(comedian_2.name)
      expect(page).to have_content("Age: #{comedian_2.age}")
      expect(page).to have_content("Birthplace: #{comedian_2.birthplace}")
      # expect(page).to have_xpath(img[src*=comedian_2.image_url])
    end

    within "#comedian-#{comedian_3.id}" do

      expect(page).to have_content(comedian_3.name)
      expect(page).to have_content("Age: #{comedian_3.age}")
      expect(page).to have_content("Birthplace: #{comedian_3.birthplace}")
      # expect(page).to have_xpath(img[src*=comedian_3.image_url])
      end
    end
  end
end
