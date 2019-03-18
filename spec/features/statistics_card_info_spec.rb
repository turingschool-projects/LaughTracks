RSpec.describe Comedian do

  before(:each) do
    c1 = Comedian.create(name: 'Demetri Martin', age: 45, hometown: 'New York City', image: 'https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_UY317_CR20,0,214,317_AL_.jpg')
    c2 = Comedian.create(name: 'Steve Martin', age: 73, hometown: 'Waco', image: 'https://m.media-amazon.com/images/M/MV5BNDY0ODYwNDM3OV5BMl5BanBnXkFtZTcwMTc3NjQzMg@@._V1_UX214_CR0,0,214,317_AL_.jpg')

    c1.specials.create(name: 'Person.', runtime: 42, image: 'https://m.media-amazon.com/images/M/MV5BMjE0MDgwNDE0MF5BMl5BanBnXkFtZTcwMDAzMDQ1MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg')
    c1.specials.create(name: 'Live (At the Time)', runtime: 61, image: 'https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_UX182_CR0,0,182,268_AL_.jpg')
    c1.specials.create(name: 'The Overthinker', runtime: 56, image: 'https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_UY268_CR4,0,182,268_AL_.jpg')

    c2.specials.create(name: 'Steve Martin and Martin Short: An Evening You Will Forget for the Rest of Your Life', runtime: 74, image: 'https://m.media-amazon.com/images/M/MV5BMTI5ZjQzNzktYTk2OS00ZWFiLWFlMjctNGZjMTU3NjAyMjEyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg')
    c2.specials.create(name: "Steve Martin's Best Show Ever", runtime: 60, image: 'https://m.media-amazon.com/images/M/MV5BOTIwMGZmOGYtYzM1My00YTE1LWI2NTgtY2YwOTYxNGM2YTZkXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg')
    c2.specials.create(name: 'All Commercials... A Steve Martin Special', runtime: 60, image: 'https://m.media-amazon.com/images/M/MV5BOTIwMGZmOGYtYzM1My00YTE1LWI2NTgtY2YwOTYxNGM2YTZkXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg')
  end

  describe 'when a user visits comedians' do
    it 'shows correct statistics' do
      visit '/comedians'
        within '#statistics' do
          expect(page).to have_content(59)
          expect(page).to have_content(6)
          expect(page).to have_content(58.83)
          expect(page).to have_content('Waco, New York City,')
        end
    end
  end

end
