RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
      it 'belongs_to a comedian' do
        association = described_class.reflect_on_association(:comedian)
        expect(association.macro).to eq :belongs_to
      end
    end
  end

  describe 'Class Methods' do
    it '.average_length' do
      mitch = Comedian.create(name: 'Mitch Hedberg', age: 48, city: "Los Angeles")
      mitch_special_1 = mitch.specials.create(name: "Mitch is funny", thumbnail: "", run_time: 60)
      mitch_special_2 = mitch.specials.create(name: "Mitch is NOT funny", run_time: 120, thumbnail: "")
      mitch_special_3 = mitch.specials.create(name: "Mitch is the funniest", run_time: 100, thumbnail: "")

      average_length = Special.average_length.to_f.round(2)

      expect(average_length).to eq(93.33)
    end
  end
end
