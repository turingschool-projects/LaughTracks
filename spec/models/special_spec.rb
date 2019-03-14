RSpec.describe Special do

  before(:each) do
    sp1 = Special.create(name: "Talking for Clapping", runtime: 65)
    sp2 = Special.create(name: "Tragedy Plus Comedy Equals Time", runtime: 59)
    sp3 = Special.create(name: "No Reason to Complain", runtime: 42)
  end

  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe 'Calculations' do

      it 'can calculate average runtime' do
        expected = 55.33
        actual = Special.average_runtime
        expect(actual).to eq(expected)
      end
    end
  end
end
