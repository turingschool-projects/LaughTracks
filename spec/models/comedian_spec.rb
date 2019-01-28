RSpec.describe Comedian do
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

  describe 'class methods' do
    describe ".average_age" do
      it "returns average_age for comedians" do
        Comedian.create(name: "John Mulaney", age: 34, city: "Chicago, IL", image: "https://static01.nyt.com/images/2018/05/13/magazine/13mag-talk-1/13mag-talk-1-superJumbo.jpg?quality=90&auto=webp")
        Comedian.create(name: "Michelle Wolf", age: 33, city: "Hershey, PA", image: "https://media.gq.com/photos/5be9ec11f681dd1052b31fe7/3:4/w_640/Michelle%20Wolf-Breakouts-GQ-December-120118-01.jpg")

        expect(Comedian.average_age).to eq(33.5)
      end
    end
  end

  describe 'class methods' do
    describe ".unique_cities" do
      it "returns unique_cities for comedians" do
        Comedian.create(name: "John Mulaney", age: 34, city: "Chicago, IL", image: "https://static01.nyt.com/images/2018/05/13/magazine/13mag-talk-1/13mag-talk-1-superJumbo.jpg?quality=90&auto=webp")
        Comedian.create(name: "Michelle Wolf", age: 33, city: "Chicago, IL", image: "https://media.gq.com/photos/5be9ec11f681dd1052b31fe7/3:4/w_640/Michelle%20Wolf-Breakouts-GQ-December-120118-01.jpg")
        expect(Comedian.unique_cities).to eq("Chicago, IL")
      end
    end
  end


end
