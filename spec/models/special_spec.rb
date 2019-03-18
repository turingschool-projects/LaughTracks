RSpec.describe Special do
  describe 'Class Methods' do
    it '.average_special_length' do

      Special.create(name: "Special_1", runtime_mins: 10, comedian_id: 1, image_url: "https://www.pexels.com/search/beauty/")
      Special.create(name: "Special_2", runtime_mins: 20, comedian_id: 1, image_url: "https://www.pexels.com/search/beauty/")
      Special.create(name: "Special_3", runtime_mins: 30, comedian_id: 1, image_url: "https://www.pexels.com/search/beauty/")
      Special.create(name: "Special_3", runtime_mins: 40, comedian_id: 2, image_url: "https://www.pexels.com/search/beauty/")
      Special.create(name: "Special_4", runtime_mins: 50, comedian_id: 2, image_url: "https://www.pexels.com/search/beauty/")

      expect(Special.average_special_length).to eq(30)
      end
    end
    describe 'Validations' do
      it 'is invalid without a name' do
        special = Special.new(runtime_mins: 30, comedian_id: 1, image_url: "https://www.pexels.com/search/beauty/")

        expect(special).to_not be_valid
      end
      it 'is invalid without runtime_mins' do
        special = Special.new(name: "Special_3", comedian_id: 1, image_url: "https://www.pexels.com/search/beauty/")

        expect(special).to_not be_valid
      end
      it 'is invalid without a comedian_id' do
        special = Special.new(name: "Special_3", runtime_mins: 30, image_url: "https://www.pexels.com/search/beauty/")

        expect(special).to_not be_valid
      end
      it 'is invalid without an image_url' do
        special = Special.new(name: "Special_3", runtime_mins: 30, comedian_id: 1)

        expect(special).to_not be_valid
    end
  end
end
