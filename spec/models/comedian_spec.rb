RSpec.describe Comedian do

  before(:each) do
    c1 = Comedian.create(name: "Patton Oswalt", age: 50, city: "Portsmouth")
    c2 = Comedian.create(name: "Whoopi Goldberg", age: 63, city: "New York City")
    c3 = Comedian.create(name: "Steve Martin", age: 73, city: "New York City")
    c4 = Comedian.create(name: "Dane Cook", age: 51, city: "Brooklyn")
    c1.specials.create(comedian_id: 1, name: "Talking for Clapping", runtime: 65, thumb: "https://m.media-amazon.com/images/M/MV5BZmMyYzAzMzktOWM4MS00YmI2LThmM2MtNjBkODZkOWQxODNmXkEyXkFqcGdeQXVyNjYzMDA4MTI@._V1_UY268_CR3,0,182,268_AL_.jpg")
    c1.specials.create(comedian_id: 1, name: "Tragedy Plus Comedy Equals Time", runtime: 59, thumb: "https://m.media-amazon.com/images/M/MV5BODU2MDEyNGYtODE3ZC00YjUyLTk3ODctYTU2MzM5Y2M3NWM4XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR0,0,182,268_AL_.jpg")
    c1.specials.create(comedian_id: 1, name: "No Reason to Complain", runtime: 42, thumb: "https://m.media-amazon.com/images/M/MV5BMTk3MjUxODI5NF5BMl5BanBnXkFtZTcwMjcxMTIzMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
    c2.specials.create(comedian_id: 2, name: "Direct from Broadway", runtime: 75, thumb: "https://m.media-amazon.com/images/M/MV5BMGE4MDcwZTMtYjIxNC00NjkxLWI1MTgtOTgzMDQ5ZTgzZDc4XkEyXkFqcGdeQXVyMDgyNjA5MA@@._V1_UX182_CR0,0,182,268_AL_.jpg")

  end

  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe 'Calculations' do

      it 'can calculate average age' do
        expected = 59.25
        actual = Comedian.average_age.to_f.round(2)
        expect(actual).to eq(expected)
      end
    end


    describe 'Collections' do

      it 'can list all comedians cities' do
        expected = ['Brooklyn', 'New York City', 'Portsmouth']
        actual = Comedian.all_cities
        expect(actual).to eq(expected)
      end
    end

    describe 'Filters' do

      it 'can filter page by comedian age' do
        expected = [Comedian.first]
        actual = Comedian.filter_by_age(50)
        expect(actual).to eq(expected)
      end
    end

    describe 'Sorting' do

      it 'can sort page by comedian name' do
        @comedians = Comedian.sort_by_name

        expected = "Dane Cook"
        actual = @comedians.first.name
        expect(actual).to eq(expected)
      end

      it 'can sort page by comedian age' do
        @comedians = Comedian.sort_by_age

        expected = "Patton Oswalt"
        actual = @comedians.first.name
        expect(actual).to eq(expected)
      end

      it 'can sort page by comedian city' do
        @comedians = Comedian.sort_by_city

        expected = "Dane Cook"
        actual = @comedians.first.name
        expect(actual).to eq(expected)
      end
    end

  end
end
