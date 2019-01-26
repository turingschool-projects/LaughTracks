class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    # @specials = Special.get_comedian_specials()
    erb :index
  end

end
