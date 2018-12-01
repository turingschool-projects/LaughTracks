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
    it '.avg_runtime' do
      Special.create(name:'jbkjfz', run_time: 60, image: ".jpg" )
      Special.create(name:'jbkjfz', run_time: 56, image: ".jpg" )
      Special.create(name:'jbkjfz', run_time: 71, image: ".jpg" )

      expect(Special.avg_runtime).to eq(62.33)
    end
    it '.total_specials' do
      comic1 = Comedian.create(name: 'kbglzd', city: 'New York City', age: 35)
      comic1.specials.create(name:'jbkjfz', run_time: 60, image: ".jpg" )
      comic1.specials.create(name:'jbkjfz', run_time: 56, image: ".jpg" )
      comic1.specials.create(name:'jbkjfz', run_time: 71, image: ".jpg" )

      expect(Special.total_specials).to eq(3)
    end
  end
end
