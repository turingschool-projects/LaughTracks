RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
    it 'belongs to one comedian' do
      association = Special.reflect_on_association(:comedian)
      expect(association.macro).to eq :belongs_to
    end
  end

  describe 'Class methods' do
    describe '.average_runtime' do
      it 'returns the average length for all specials' do

        Special.create(name: "The Original Kings of Comedy", length: 72, url: "image.jpg")
        Special.create(name: "A Tribute to Bernie Mac", length: 60, url: "another_image.jpg")

        average = Special.all.average(:length)

        expect(average).to eq(66)
      end
    end
  end
end
