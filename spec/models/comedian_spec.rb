RSpec.describe Comedian do
  before :each do
    @c1 = Comedian.create(name: 'Mitch Hedberg', age: 48, city:"Los Angeles")
    @c2 = Comedian.create(name: 'Mitch Hedberg', age: 48, city:"Los Angeles")
    @c3 = Comedian.create(name: 'Mitch Hedberg', age: 48, city:"Los Angeles")
    @c4 = Comedian.create(name: 'Mitch Hedberg', age: 48, city:"Los Angeles")

    @s1 = @c1.specials.create(title: 'Mitch Hedberg: Funny Stuff', run_time: 10)
    @s2 = @c2.specials.create(title: 'Mitch Hedberg: Funny Stuff', run_time: 2)
    @s3 = @c2.specials.create(title: 'Mitch Hedberg: Funny Stuff', run_time: 3)
    @s4 = @c3.specials.create(title: 'Mitch Hedberg: Funny Stuff', run_time: 5)
  end

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
end
