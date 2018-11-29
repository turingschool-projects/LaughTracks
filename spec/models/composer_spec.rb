RSpec.describe Composer do
  describe 'Validations' do
    describe 'Required Field(s)' do

      Composer.create(surname: "Beethoven", forename: "Ludwig van", city: "Vienna", dob: 1770, dod: 1827, age: 56, thumbnail: "/images/beethoven.jpg")


      it 'is invalid without a surname' do
        comp = Composer.create(forename: "Franz Joseph", city: "Vienna", dob: 1732, dod: 1809, age: 77, thumbnail: "/images/haydn.jpg")
        expect(comp).to_not be_valid
      end

      it 'is invalid witout a forename' do
        comp = Composer.create(surname: "Beethoven", city: "Vienna", dob: 1770, dod: 1827, age: 56, thumbnail: "/images/beethoven.jpg")
        expect(comp).to_not be_valid
      end

      it 'is invalid witout a city' do
        comp = Composer.create(surname: "Beethoven", forename: "Ludwig van", dob: 1770, dod: 1827, age: 56, thumbnail: "/images/beethoven.jpg")
        expect(comp).to_not be_valid
      end

      it 'is invalid witout an age' do
        comp = Composer.create(surname: "Beethoven", forename: "Ludwig van", city: "Vienna", dob: 1770, dod: 1827)
        expect(comp).to_not be_valid
      end

      it 'is invalid without a thumbnail' do
        comp = Composer.create(surname: "Beethoven", forename: "Ludwig van", city: "Vienna", dob: 1770, dod: 1827, age: 56)
        expect(comp).to_not be_valid
      end

    end
  end
end
