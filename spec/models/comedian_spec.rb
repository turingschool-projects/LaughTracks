RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end

  describe "Class Methods" do
    describe "average_age" do
      it "returns average age of comedians" do
        Comedian.create(name: "Ellen DeGeneres", age: 61, city: "Metairie")
        Comedian.create(name: "Anjelah Johnson-Reyes", age: 36, city: "San Jose")
        Comedian.create(name: "Wanda Sykes", age: 54, city: "Portsmouth")
        Comedian.create(name: "Bob Newhart", age: 89, city: "Oak Park")

        expect(Comedian.average_age).to eq(60)
      end
    end

    describe "cities" do
      it "returns a list of unique cities" do
        Comedian.create(name: "Ellen DeGeneres", age: 61, city: "Metairie")
        Comedian.create(name: "Anjelah Johnson-Reyes", age: 36, city: "San Jose")
        Comedian.create(name: "Wanda Sykes", age: 54, city: "San Jose")
        Comedian.create(name: "Bob Newhart", age: 89, city: "Oak Park")

        actual = ["Metairie", "San Jose", "Oak Park"]
        expect(Comedian.cities).to eq(actual)
      end
    end

    describe "find_by" do
      it "finds comedians based on age" do
        ellen = Comedian.create(name: "Ellen DeGeneres", age: 61, city: "Metairie")
        anjelah = Comedian.create(name: "Anjelah Johnson-Reyes", age: 36, city: "San Jose")
        wanda = Comedian.create(name: "Wanda Sykes", age: 54, city: "San Jose")
        bob = Comedian.create(name: "Bob Newhart", age: 89, city: "Oak Park")

        expect(Comedian.find_by(age: 54)).to eq(wanda)
        expect(Comedian.find_by(age: 36)).to eq(anjelah)
      end
    end
  end

end
