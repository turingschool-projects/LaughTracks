class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if (params[:age]) == nil
      @comedians = Comedian.all
    else
      @comedians = Comedian.find_comedians_by_age(params[:age])
    end
    @specials = Special.all
    # require 'pry'; binding.pry
    erb :welcome
  end

end
