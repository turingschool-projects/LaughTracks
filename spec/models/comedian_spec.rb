RSpec.describe Comedian, type: :model do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48, city: "San Francisco", head_shot: nil)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: "Mitch Hedberg", city:"San Francisco", head_shot: nil)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing a city' do
        comic = Comedian.create(name: "Mitch Hedberg", age: 48, head_shot: nil)
        expect(comic).to_not be_valid
      end

      it 'should be valid if there is a name, city, age' do
        comic = Comedian.create(name: "Mitch Hedberg", age: 48, city:"San Francisco", head_shot: nil)
        expect(comic).to be_valid
      end 
    end
  end 

  describe 'Class Methods' do  
    it '.average_age' do
      dc = Comedian.create(
        name: "Dave Chappelle", 
        age: 45, 
        city: "Washington, D.C.", 
        head_shot: "https://media2.fdncms.com/portmerc/imager/u/original/10749418/mwbw-chappelle.jpg"
      )
      aw = Comedian.create(
        name: "Ali Wong", 
        age: 36, 
        city: "San Francisco, CA", 
        head_shot: "https://res.cloudinary.com/sagacity/image/upload/c_crop,h_683,w_1024,x_0,y_0/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1080/ali-wong-2_wnlx6z.jpg"
      )

      expect(Comedian.average_age).to eq(40.50)
    end 
  
    it '.unique_cities' do
      dc = Comedian.create(
        name: "Dave Chappelle", 
        age: 45, 
        city: "Washington, D.C.", 
        head_shot: "https://media2.fdncms.com/portmerc/imager/u/original/10749418/mwbw-chappelle.jpg"
      )
      aw = Comedian.create(
        name: "Ali Wong", 
        age: 36, 
        city: "San Francisco", 
        head_shot: "https://res.cloudinary.com/sagacity/image/upload/c_crop,h_683,w_1024,x_0,y_0/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1080/ali-wong-2_wnlx6z.jpg"
      )
      rw = Comedian.create(
        name: "Robin Williams", 
        age: 63,
        city: "San Francisco", 
        head_shot: "http://www.gstatic.com/tv/thumb/persons/55875/55875_v9_ba.jpg"
      )
     
      expect(Comedian.unique_cities).to eq(["San Francisco", "Washington, D.C."])
    end
  end
end
