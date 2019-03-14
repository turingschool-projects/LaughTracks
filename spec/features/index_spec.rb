RSpec.describe 'comedians homepage view' do
  context 'as a visitor' do
    it 'should see a list of comedians along with thier name, age, and city' do
      c1 = Comedian.create(name: "Adam Sandler",	age: 52,	home_town: "New York, NY",	photo: "https://cdn1.thr.com/sites/default/files/2012/12/6_degrees_of_judd_apatow_adam_sandler.jpg")
      c2 = Comedian.create(name: "John Mulaney",	age: 36,	home_town: "Chicago, IL", photo: "https://resizing.flixster.com/zOSxtyjb51wl7o4ceVADrTui2IY=/874x779/v1.cjs0MzU5NTtqOzE3OTgzOzEyMDA7ODc0Ozc3OQ")

      c1.specials.create(name: "100% Fresh",	run_time: 73, thumbnail: "https://m.media-amazon.com/images/M/MV5BNWNiYWJlNzQtYmMwMS00MjUyLWE4YjAtNDVjZWUwNzBjZDQ1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
      c2.specials.create(name: "The Comeback Kid", run_time: 61, thumbnail: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg")

      visit '/comedians'

      within "#comedian-#{c1.id}" do
        expect(page).to have_content('Adam Sandler')
        expect(page).to have_content('52')
        expect(page).to have_content('New York, NY')
      end
      within "#comedian-#{c2.id}" do
        expect(page).to have_content('John Mulaney')
        expect(page).to have_content('36')
        expect(page).to have_content('Chicago, IL')
      end
    end

    it 'should see a list of each comedians TV specials names' do
      c1 = Comedian.create(name: "Adam Sandler",	age: 52,	home_town: "New York, NY",	photo: "https://cdn1.thr.com/sites/default/files/2012/12/6_degrees_of_judd_apatow_adam_sandler.jpg")
      c2 = Comedian.create(name: "John Mulaney",	age: 36,	home_town: "Chicago, IL", photo: "https://resizing.flixster.com/zOSxtyjb51wl7o4ceVADrTui2IY=/874x779/v1.cjs0MzU5NTtqOzE3OTgzOzEyMDA7ODc0Ozc3OQ")

      c1.specials.create(name: "100% Fresh",	run_time: 73, thumbnail: "https://m.media-amazon.com/images/M/MV5BNWNiYWJlNzQtYmMwMS00MjUyLWE4YjAtNDVjZWUwNzBjZDQ1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
      c2.specials.create(name: "The Comeback Kid", run_time: 61, thumbnail: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg")
      c2.specials.create(name: "Kid Gorgeous",	run_time: 64, thumbnail: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")

      visit '/comedians'

      within "#comedian-#{c1.id}" do
        expect(page).to have_content("100% Fresh")
      end
      within "#comedian-#{c2.id}" do
        expect(page).to have_content("The Comeback Kid")
        expect(page).to have_content("Kid Gorgeous")
      end
    end

    context 'where I see a list of each comedians TV specials names' do
      it 'should see the runtime and thumbnail image of each special' do
        c2 = Comedian.create(name: "John Mulaney",	age: 36,	home_town: "Chicago, IL", photo: "https://resizing.flixster.com/zOSxtyjb51wl7o4ceVADrTui2IY=/874x779/v1.cjs0MzU5NTtqOzE3OTgzOzEyMDA7ODc0Ozc3OQ")

        c2.specials.create(name: "The Comeback Kid", run_time: 61, thumbnail: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg")
        c2.specials.create(name: "Kid Gorgeous",	run_time: 64, thumbnail: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")

        visit '/comedians'

        thumbnail_1 = "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg"
        thumbnail_2 = "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg"

        within "#comedian-#{c2.id}" do
          expect(page).to have_content("61")
          expect(page).to have_content(thumbnail_1)
          expect(page).to have_content("64")
          expect(page).to have_content(thumbnail_2)
        end
      end
    end

    context 'when looking at the area at the top of the page called statistics' do
      it 'should see the average for all comedian ages and specials run time, along with a unique list of hometowns' do
        c1 = Comedian.create(name: "Adam Sandler",	age: 52,	home_town: "New York, NY",	photo: "https://cdn1.thr.com/sites/default/files/2012/12/6_degrees_of_judd_apatow_adam_sandler.jpg")
        c2 = Comedian.create(name: "John Mulaney",	age: 36,	home_town: "Chicago, IL", photo: "https://resizing.flixster.com/zOSxtyjb51wl7o4ceVADrTui2IY=/874x779/v1.cjs0MzU5NTtqOzE3OTgzOzEyMDA7ODc0Ozc3OQ")
        c3 = Comedian.create(name: "Dave Chappelle",	age: 45,	home_town: "Washington D.C.",	photo: "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTQzMzA3MzU5NDg4MzIxMDk2/dave-chappelle_gettyimages-481295252jpg.jpg")

        c1.specials.create(name: "100% Fresh",	run_time: 73, thumbnail: "https://m.media-amazon.com/images/M/MV5BNWNiYWJlNzQtYmMwMS00MjUyLWE4YjAtNDVjZWUwNzBjZDQ1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
        c2.specials.create(name: "The Comeback Kid", run_time: 61, thumbnail: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg")
        c3.specials.create(name: "Killin' Them Softly",	run_time: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg")

        visit '/comedians'

        within '#statistics' do
          expect(page).to have_content("44")
          expect(page).to have_content("65")
          expect(page).to have_content("New York, NY")
          expect(page).to have_content("Chicago, IL")
          expect(page).to have_content("Washington D.C.")
        end
      end
    end

  end
end
