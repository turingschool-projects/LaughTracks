RSpec.describe 'comedian index workflow' do
  context 'as a visitor' do
    it 'should show the name, age, and city of comedian' do
      c1 = Comedian.create(name: "Bill Burr", age: 50, birthplace: "Canton, MA", image_url: "https://image.masslive.com/home/mass-media/width960/img/entertainment/photo/nashville-comedy-festival-21d347107e975672.jpg")
      c2 = Comedian.create(name: "Joe Rogan", age: 51, birthplace: "Newark, NJ", image_url: "https://www.maxim.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1400/MTQ4NDk2MjMzNzY0MjM0Nzc2/joe-rogan.webp")
      c3 = Comedian.create(name: "Louis C.K.", age: 51, birthplace: "Washington, D.C.", image_url: "https://media1.fdncms.com/pittsburgh/imager/u/blog/13239255/louis_ck_kuwait_crop_cropped.jpg?cb=1548183367")
      s1 = c1.specials.create(title: "Walk Your Way Out", runtime_mins: 77, image_url: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_.jpg")

      visit '/comedians'

      within "#comedian-#{c1.id}" do
        expect(page).to have_content("Name: #{c1.name}")
        expect(page).to have_content("Age: #{c1.age}")
        expect(page).to have_content("Birthplace: #{c1.birthplace}")
      end
      within "#comedian-#{c2.id}" do
        expect(page).to have_content("Name: #{c2.name}")
        expect(page).to have_content("Age: #{c2.age}")
        expect(page).to have_content("Birthplace: #{c2.birthplace}")
      end
      within "#comedian-#{c3.id}" do
        expect(page).to have_content("Name: #{c3.name}")
        expect(page).to have_content("Age: #{c3.age}")
        expect(page).to have_content("Birthplace: #{c3.birthplace}")
      end
    end
    it 'should show a comedians specials' do
      c1 = Comedian.create(name: "Bill Burr", age: 50, birthplace: "Canton, MA", image_url: "https://image.masslive.com/home/mass-media/width960/img/entertainment/photo/nashville-comedy-festival-21d347107e975672.jpg")
      s1 = c1.specials.create(title: "Walk Your Way Out", runtime_mins: 77, image_url: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_.jpg")
      s2 = c1.specials.create(title: "I'm Sorry You Feel That Way", runtime_mins: 80, image_url: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_SY1000_SX675_AL_.jpg")
      s3 = c1.specials.create(title: "You People Are All The Same", runtime_mins: 69, image_url: "https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")

      visit '/comedians'

      within "#comedian-#{c1.id}" do
        within "#special-#{s1.id}" do
          expect(page).to have_content("Name: #{s1.title}")
          expect(page).to have_content("Runtime: #{s1.runtime_mins}")
        end
        within "#special-#{s2.id}" do
          expect(page).to have_content("Name: #{s2.title}")
          expect(page).to have_content("Runtime: #{s2.runtime_mins}")
          # find(:xpath, "//img[@src='#{s2.image_url}']").should_not be_nil
        end
        within "#special-#{s3.id}" do
          expect(page).to have_content("Name: #{s3.title}")
          expect(page).to have_content("Runtime: #{s3.runtime_mins}")
          # find(:xpath, "//img[@src='#{s3.image_url}']").should_not be_nil
        end
      end
    end

    it 'should have statistics at the top of the page' do
      c1 = Comedian.create(name: "Bill Burr", age: 50, birthplace: "Canton, MA", image_url: "https://image.masslive.com/home/mass-media/width960/img/entertainment/photo/nashville-comedy-festival-21d347107e975672.jpg")
      c2 = Comedian.create(name: "Joe Rogan", age: 51, birthplace: "Newark, NJ", image_url: "https://www.maxim.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1400/MTQ4NDk2MjMzNzY0MjM0Nzc2/joe-rogan.webp")
      c3 = Comedian.create(name: "Louis C.K.", age: 51, birthplace: "Washington, D.C.", image_url: "https://media1.fdncms.com/pittsburgh/imager/u/blog/13239255/louis_ck_kuwait_crop_cropped.jpg?cb=1548183367")

      s1 = c1.specials.create(title: "Walk Your Way Out", runtime_mins: 77, image_url: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_.jpg")
      s2 = c1.specials.create(title: "I'm Sorry You Feel That Way", runtime_mins: 80, image_url: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_SY1000_SX675_AL_.jpg")
      s3 = c1.specials.create(title: "You People Are All The Same", runtime_mins: 69, image_url: "https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")

      s4 = c2.specials.create(title: "Strange Times", runtime_mins: 63, image_url: "https://m.media-amazon.com/images/M/MV5BNzc2Mzg5YmMtMzM1NC00NDgwLTljYWQtZDdkNzBmNjZkNmJhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
      s5 = c2.specials.create(title: "Triggered", runtime_mins: 63, image_url: "https://m.media-amazon.com/images/M/MV5BYTE0M2FkNGMtYjYxNi00MDRkLWE0YWUtNWI4NWU3NWIzMWIzXkEyXkFqcGdeQXVyMzE5NzI0NjE@._V1_.jpg")
      s6 = c2.specials.create(title: "Rocky Mountain High", runtime_mins: 63, image_url: "https://m.media-amazon.com/images/M/MV5BNjI4OGY5MTktZjNiNC00MTgyLTlhZGMtMzBhYzcyZTI5YTljXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_SX750_AL_.jpg")

      s7 = c3.specials.create(title: "Oh My God", runtime_mins: 58, image_url: "https://m.media-amazon.com/images/M/MV5BMjQ4NjQwOTYzNl5BMl5BanBnXkFtZTcwNjU2NjczOQ@@._V1_.jpg")
      s8 = c3.specials.create(title: "Live At The Beacon Theater", runtime_mins: 63, image_url: "https://m.media-amazon.com/images/M/MV5BNzIxMTUxMjYzMV5BMl5BanBnXkFtZTcwMDYwMjE0Nw@@._V1_.jpg")
      s9 = c3.specials.create(title: "Hilarious", runtime_mins: 88, image_url: "https://m.media-amazon.com/images/M/MV5BNTQyODYyNzcxN15BMl5BanBnXkFtZTgwOTA3MzcwMzE@._V1_.jpg")

      visit '/comedians'

      within '#statistics' do
        expect(page).to have_content("Statistics:")
        expect(page).to have_content("Average age: #{Comedian.average(:age).round}")
        expect(page).to have_content("Average special length: #{Special.average(:runtime_mins).round}")
        expect(page).to have_content("Bill Burr : Canton, MA")
        expect(page).to have_content("Joe Rogan : Newark, NJ")
        expect(page).to have_content("Louis C.K. : Washington, D.C.")
      end
    end
  end
end
