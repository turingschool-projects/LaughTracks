RSpec.describe Comedian do
    describe 'when user visits comedians' do
        describe 'each comedian'  do
            it 'has comedian info and specials' do
                c1 = Comedian.create(name: "Bill Burr", age: 50, birthplace: "Canton, MA", image_url: "https://image.masslive.com/home/mass-media/width960/img/entertainment/photo/nashville-comedy-festival-21d347107e975672.jpg")
                c2 = Comedian.create(name: "Joe Rogan", age: 51, birthplace: "Newark, NJ", image_url: "https://www.maxim.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_1400/MTQ4NDk2MjMzNzY0MjM0Nzc2/joe-rogan.webp")

                c1.specials.create(name: "Walk Your Way Out", runtime_mins: 77, image_url: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_.jpg")
                c1.specials.create(name: "I'm Sorry You Feel That Way", runtime_mins: 80, image_url: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_SY1000_SX675_AL_.jpg")
                c1.specials.create(name: "You People Are All The Same", runtime_mins: 69, image_url: "https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
                c2.specials.create(name: "Strange Times", runtime_mins: 63, image_url: "https://m.media-amazon.com/images/M/MV5BNzc2Mzg5YmMtMzM1NC00NDgwLTljYWQtZDdkNzBmNjZkNmJhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
                c2.specials.create(name: "Triggered", runtime_mins: 63, image_url: "https://m.media-amazon.com/images/M/MV5BYTE0M2FkNGMtYjYxNi00MDRkLWE0YWUtNWI4NWU3NWIzMWIzXkEyXkFqcGdeQXVyMzE5NzI0NjE@._V1_.jpg")

                visit '/comedians' 
                
                within '.comedian-box' do
                    expect(page).to have_content("Bill Burr")
                    expect(page).to have_content("Age: 50")
                    expect(page).to have_content("Hometown: Canton, MA")
                    expect(page).to have_content("Joe Rogan")
                    expect(page).to have_content("Age: 51")
                    expect(page).to have_content("Hometown: Newark, NJ")
                    expect(page).to have_content("Name: Walk Your Way Out")
                    expect(page).to have_content("Name: I'm Sorry You Feel That Way")
                    expect(page).to have_content("Name: You People Are All The Same")
                    expect(page).to have_content("Name: Strange Times")
                    expect(page).to have_content("Name: Triggered")
                end

                within '.stats-box' do
                    expect(page).to have_content("Comedian Statistics")
                    expect(page).to have_content("Average Age: 51")
                    expect(page).to have_content("Average Runtime Minutes: 70")
                    expect(page).to have_content("Comedian Cities: Canton, MA, Newark, NJ")
                end
            end
        end 
    end
        
end