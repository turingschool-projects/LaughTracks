RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a title' do
        special = Special.create(run_time: 60, image_url: 'https://example.com', comedian_id: 1)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a run_time' do
        special = Special.create(title: 'John Mulaney: New in Town', image_url: 'https://example.com', comedian_id: 1)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing an image_url' do
        special = Special.create(title: 'John Mulaney: New in Town', run_time: 60, comedian_id: 1)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a comedian_id' do
        special = Special.create(title: 'John Mulaney: New in Town', run_time: 60, image_url: 'https://example.com')
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe '.average_runtime' do
      it 'returns average runtime of all specials' do
        Special.create(title: 'John Mulaney: New in Town', run_time: 60, image_url: 'https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg', comedian_id: 1)
        Special.create(title: "Bill Burr: I'm Sorry You Feel That Way", run_time: 80, image_url: 'https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg', comedian_id: 2)
        expect(Special.average_runtime).to eq(70)
      end
    end
  end
end
