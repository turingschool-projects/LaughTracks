RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe '.average_runtime' do
      it 'should return the average runtime of all specials' do
      Special.create(name: "What Now?", run_time: 96)
      Special.create(name: "Let Me Explain", run_time: 74)
      Special.create(name: "I'm a Grown Little Man", run_time: 61)

      expect(Special.average_runtime).to eq(77)
      end
    end

    describe '.get_comedians_specials' do
      it 'gets specials for specific comedians' do
        kumail = Comedian.create(name: "Kumail Nanjiani", age: 40, city: "Karachi, Pakistan")
        kevin = Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, Pennsylvania")
        mike = Comedian.create(name: "Mike Birbiglia", age: 40, city: "Shrewsbury, Massachussets")
        wn = Special.create(name: "What Now?", comedian_id: 2)
        lme = Special.create(name: "Let Me Explain", comedian_id: 2)
        bm = Special.create(name: "Beta Male", comedian_id: 1)
        mgb = Special.create(name: "My Girlfriend's Boyfriend", comedian_id: 3)

        expect(Special.get_comedians_specials([kumail, mike])).to eq([bm, mgb])
        expect(Special.get_comedians_specials([kumail, mike])).to_not eq([wn, lme])
      end
    end
  end
end
