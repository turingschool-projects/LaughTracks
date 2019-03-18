RSpec.describe Artist do
  before(:each) do
    a1 = Artist.create(name: "Halestorm", formation_year: 1997, origin: "Red Lion, PA", album_count: 4)
    a2 = Artist.create(name: "The Glitch Mob", formation_year: 2006, origin: "Los Angeles, CA", album_count: 5)
    a3 = Artist.create(name: "The Heavy", formation_year: 2007, origin: "Bath, Somerset, England", album_count: 5)

    a1.albums.create({ name: "Vicious", release_date: "2018-07-27", track_count: 12, duration: "43:26"})
    a1.albums.create({ name: "Into The Wild Life", release_date: "2015-04-14", track_count: 13, duration: "29:31"})
    a1.albums.create({ name: "The Strange Case Of...", release_date: "2012-04-10", track_count: 12, duration: "40:56"})
    a1.albums.create({ name: "Halestorm", release_date: "2009-04-28", track_count: 11, duration: "37:03"})

    a2.albums.create({ name: "See Without Eyes", release_date: "2018-05-04", track_count: 11, duration: "49:47"})
    a2.albums.create({ name: "Love Death Immortality Remixes", release_date: "2015-02-24", track_count: 18, duration: "92:07"})
    a2.albums.create({ name: "Love Death Immortality", release_date: "2014-02-11", track_count: 10, duration: "52:07"})
    a2.albums.create({ name: "Drink The Sea - The Remixes", release_date: "2011-01-13", track_count: 12, duration: "66:20"})
    a2.albums.create({ name: "Drink the Sea", release_date: "2010-05-05", track_count: 10, duration: "59:31"})

    a3.albums.create({ name: "Sons", release_date: "2019-05-17", track_count: 11, duration: "34:47" })
    a3.albums.create({ name: "Hurt & The Merciless", release_date: "2016-04-01", track_count: 13, duration: "43:59" })
    a3.albums.create({ name: "The Glorious Dead", release_date: "2012-08-20", track_count: 10, duration: "39:17" })
    a3.albums.create({ name: "The House That Dirt Built", release_date: "2009-10-13", track_count: 11, duration: "38:06" })
    a3.albums.create({ name: "Great Vengeance & Furious Fire", release_date: "2007-09-17", track_count: 10, duration: "33:36"})
  end

  describe 'when a user visits \'/artists\'' do
    describe 'for every Artist' do
      it 'can see name, formation year, origin city, and album count' do
        visit '/artists'
          within '#halestorm' do
            expect(page).to have_content('Halestorm')
            expect(page).to have_content('1997')
            expect(page).to have_content('Red Lion, PA')
            expect(page).to have_content('4')

            expect(page).to_not have_content('The Glitch Mob')
          end

          within '#the_glitch_mob' do
            expect(page).to have_content('The Glitch Mob')
            expect(page).to have_content('2006')
            expect(page).to have_content('Los Angeles, CA')
            expect(page).to have_content('5')

            expect(page).to_not have_content('Halestorm')
          end

          within '#the_heavy' do
            expect(page).to have_content('The Heavy')
            expect(page).to have_content('2007')
            expect(page).to have_content('Bath, Somerset, England')
            expect(page).to have_content('5')

            expect(page).to_not have_content('The Glitch Mob')
          end
      end

      it 'can see album info' do
        visit '/artists'
          within '#halestorm .artist_details' do
            expect(page).to have_content('Vicious')
            expect(page).to have_content('Into The Wild Life')
            expect(page).to have_content('The Strange Case Of...')
            expect(page).to have_content('Halestorm')

            expect(page).to_not have_content('Drink the Sea')
          end
      end
    end
  end
end
