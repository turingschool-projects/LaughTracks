class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    # require 'pry'; binding.pry
    erb :welcome
  end

end
