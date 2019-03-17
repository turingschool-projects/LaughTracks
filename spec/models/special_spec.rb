RSpec.describe Special do
  describe 'Validations' do
    it 'should be invalid if missing a title' do
      special = Special.new(runtime_mins: 77, image_url: 'dostuff')

      expect(special).to_not be_valid
    end

    it 'should be invalid if missing a runtime' do
      special = Special.new(title: 'special', image_url: 'dostuff')

      expect(special).to_not be_valid
    end
    it 'should be invalid if missing a image_url' do
      special = Special.new(title: 'special', runtime_mins: 77)

      expect(special).to_not be_valid
    end
  end

  describe 'class methods' do
    it 'should calculate statistics of specials' do
      s1 = Special.create(title: 'special 1', runtime_mins: 1, image_url: 'dostuff')
      s2 = Special.create(title: 'special 2', runtime_mins: 2, image_url: 'dostuff')
      s3 = Special.create(title: 'special 3', runtime_mins: 3, image_url: 'dostuff')

      average = Special.average_run_length
      expect(average).to eq(2)
    end
  end
end
