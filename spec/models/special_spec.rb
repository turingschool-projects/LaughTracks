RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
      it 'should be invalid if missing run time' do
        special = Special.create(name:"Very Special")
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe '.average_length' do
      it 'should show average run time of all specials' do
        Special.create(name:"Back in Black", run_time: 130)
        Special.create(name:"Special", run_time: 60)
        Special.create(name:"The Return", run_time: 48)

        expect(Special.average_length).to eq(79.33)
      end
    end
  end
end
