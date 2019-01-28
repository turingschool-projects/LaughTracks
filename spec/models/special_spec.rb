RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end

  describe 'class methods' do
    describe ".average_length" do
      it "returns average length for specials" do
        Special.create(name: "Kid Gorgeous at Radio City", length: 65, image: "https://m.media-amazon.com/images/M/MV5BNzY4ZGM4ZDEtMDJiNS00MGZlLWJkZTctY2VmYzc4YTQzOWZlXkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_.jpg", comedian_id: 1)
        Special.create(name: "The Comeback Kid", length: 62, image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg", comedian_id: 1)
        Special.create(name: "Nice Lady", length: 58, image: "https://m.media-amazon.com/images/M/MV5BZjgxMDY5YzctODA2NC00MzY2LTgxYzAtMDc4NmY3YTA0M2QyXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg", comedian_id: 2)

        expect(Special.average_length).to eq(61.7)
      end
    end
  end

  xdescribe 'class methods' do
    describe ".count" do
      it "returns the specials count" do
        Special.create(name: "Kid Gorgeous at Radio City", length: 65, image: "https://m.media-amazon.com/images/M/MV5BNzY4ZGM4ZDEtMDJiNS00MGZlLWJkZTctY2VmYzc4YTQzOWZlXkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_.jpg", comedian_id: 1)
        Special.create(name: "The Comeback Kid", length: 62, image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg", comedian_id: 1)
        Special.create(name: "Nice Lady", length: 58, image: "https://m.media-amazon.com/images/M/MV5BZjgxMDY5YzctODA2NC00MzY2LTgxYzAtMDc4NmY3YTA0M2QyXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg", comedian_id: 2)

        expect(Special.count).to eq(3)
      end
    end
  end

end
