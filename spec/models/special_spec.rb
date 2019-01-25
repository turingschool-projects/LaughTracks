RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create(comedian_id: 1, runtime: 84)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a comedian id' do
        special = Special.create(name: "Cinco", runtime: 84)
        expect(special).to_not be_valid
      end

      it "should be invalid if missing a runtime" do
        special = Special.create(name: "Cinco", comedian_id: 1)
        expect(special).to_not be_valid
      end
    end
  end

  describe 'class methods' do
    describe 'average_runtime' do
      it "can give an average of all specials" do
        Special.create(name: "Eighty", runtime: 80, comedian_id: 1)
        Special.create(name: "Sixty", runtime: 60, comedian_id: 1)

        actual = Special.average_runtime
        expected = 70

        expect(actual).to eq(expected)
      end
    end
  end
end
