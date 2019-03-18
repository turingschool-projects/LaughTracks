RSpec.describe Comedian do
  describe 'Class Methods' do
    it '.average_age' do

      Comedian.create(name: 'Dan', age: 10, birthplace: "New York City", image_url: "https://www.pexels.com/search/beauty/")
      Comedian.create(name: 'David', age: 15, birthplace: "New York City", image_url: "https://www.pexels.com/search/beauty/")
      Comedian.create(name: 'Mark', age: 20, birthplace: "New York City", image_url: "https://www.pexels.com/search/beauty/")
      Comedian.create(name: 'John', age: 25, birthplace: "New York City", image_url: "https://www.pexels.com/search/beauty/")
      Comedian.create(name: 'Larry', age: 30, birthplace: "New York City", image_url: "https://www.pexels.com/search/beauty/")

      expect(Comedian.average_age).to eq(20)
      end
    end
    describe 'Validations' do
      it 'is invalid without a name' do
        comedian = Comedian.new(age: 30, birthplace: "New York City", image_url: "https://www.pexels.com/search/beauty/")

        expect(comedian).to_not be_valid
      end
      it 'is invalid without an age' do
        comedian = Comedian.new(name: "Larry", birthplace: "New York City", image_url: "https://www.pexels.com/search/beauty/")

        expect(comedian).to_not be_valid
      end
      it 'is invalid without a birthplace' do
        comedian = Comedian.new(name: "Larry", age: 30, image_url: "https://www.pexels.com/search/beauty/")

        expect(comedian).to_not be_valid
      end
      it 'is invalid without an image_url' do
        comedian = Comedian.new(name: "Larry", age: 30, birthplace: "New York City")

        expect(comedian).to_not be_valid
      end
    end
  end
