RSpec.describe Composer do
  describe 'Validations' do
    describe 'Required Field(s)' do

      it 'is invalid without a surname' do
        comp = Composer.create(forename: "Ludwig van", city: "Vienna", dob: 1770, dod: 1827, age: 56)

        expect(comp).to_not be_valid
      end

      it 'is invalid witout an age' do
        comp = Composer.create(surname: "Beethoven", forename: "Ludwig van", city: "Vienna", dob: 1770, dod: 1827)

        expect(comp).to_not be_valid
      end

    end
  end
end
