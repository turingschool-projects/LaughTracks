RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a title' do

        special = Special.create(runtime: 30)
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    it 'should return the average run time' do
      special = Special.create!(title: "Monkeytown", runtime: 40)
      special = Special.create!(title: "Monkeytown 2",runtime: 50)
      expect(Special.average_runtime).to eq(45)
    end
  end

end
