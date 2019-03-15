RSpec.describe Special, type: :model do
#   describe 'Validations' do
#     describe 'Required Field(s)' do
#       it 'should be invalid if missing a name' do
#         special = Special.create
#         expect(special).to_not be_valid
#       end
#     end
#   end

    describe 'Class Methods' do  
      it '.average_length' do
        ck = Comedian.create(
          name: "Louis C.K.", 
          age: 51, 
          city: "Washington, D.C.", 
          head_shot: "https://cdn.where.ca/wp-content/uploads/2012/09/Louis_CK_Headshot_Tor12.jpg"
        )
        ck.specials.create(
          title: "Live at the Beacon Theater", 
          length: 63, 
          image_url: "https://m.media-amazon.com/images/M/MV5BNzIxMTUxMjYzMV5BMl5BanBnXkFtZTcwMDYwMjE0Nw@@._V1_.jpg"
        )
        ck.specials.create(
          title: "Shameless", 
          length: 56, 
          image_url: "https://m.media-amazon.com/images/M/MV5BMjE4NjE1ODI5Ml5BMl5BanBnXkFtZTcwMTgxNjc0MQ@@._V1_.jpg"
        )

      expect(Special.average_length).to eq(59.50)
    end 
  end
end
