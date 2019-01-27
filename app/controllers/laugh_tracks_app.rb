class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.find_comedians_by_age(params[:age])
    @specials = Special.all
    # require 'pry'; binding.pry
    erb :welcome
  end

end
