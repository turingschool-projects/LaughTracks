RSpec.describe Special do

  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create(comedian_id: 1)
        expect(special).to_not be_valid
      end
      it 'should be invalid if missing a comedian id' do
        special = Special.create(name: "lol")
      end
    end
  end

  describe 'Class Methods' do
    describe '.average_length' do
      it 'returns the average length of all specials' do
        bob = Comedian.create(name: "bob", age: 10, born: "kansas")
        bob.specials.create(name: "special 1", length: 10)
        bob.specials.create(name: "special 1", length: 20)
        bob.specials.create(name: "special 1", length: 30)

        expect(Special.average_length(Comedian.all)).to eq(20)
      end
    end
  end
end
