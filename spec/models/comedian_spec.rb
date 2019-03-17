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

  describe 'Class Methods' do
    before :each do
      @c1 = Comedian.create(name: 'Mitch Hedberg', age: 50, city:"Los Angeles")
      @c2 = Comedian.create(name: 'Mitch Hedberg', age: 50, city:"Los Angeles")
      @c3 = Comedian.create(name: 'Mitch Hedberg', age: 48, city:"San Diego")
      @c4 = Comedian.create(name: 'Mitch Hedberg', age: 48, city:"Los Angeles")

      @s1 = @c1.specials.create(title: 'Mitch Hedberg: Funny Stuff', run_time: 10)
      @s2 = @c2.specials.create(title: 'Mitch Hedberg: Funny Stuff', run_time: 2)
      @s3 = @c2.specials.create(title: 'Mitch Hedberg: Funny Stuff', run_time: 3)
      @s4 = @c3.specials.create(title: 'Mitch Hedberg: Funny Stuff', run_time: 5)
    end

    it ".average_age" do
      expected = 49
      actual = Comedian.average_age

      expect(actual).to eq(expected)
    end

    it ".unique_cities" do
      expected = ['San Diego','Los Angeles'].sort()
      actual = Comedian.all.unique_cities

      expect(actual).to eq(expected)
    end

    it ".list_comedians" do
      expected = [@c1, @c2].sort()
      params = {age: 50}
      actual = Comedian.all.list_comedians(params)
      expect(actual).to eq(expected)
    end
  end

  describe 'Class Methods with empty db' do
    it ".average_age" do
      expected = 0
      actual = Comedian.average_age

      expect(actual).to eq(expected)
    end

    it ".unique_cities" do
      expected = []
      actual = Comedian.all.unique_cities

      expect(actual).to eq(expected)
    end

    it ".list_comedians" do
      expected = []
      params = {age: 50}
      actual = Comedian.list_comedians(params)

      expect(actual).to eq(expected)
    end
  end
end
