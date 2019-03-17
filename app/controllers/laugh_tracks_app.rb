class LaughTracksApp < Sinatra::Base

  get '/comedians' do
<<<<<<< Updated upstream
    @comedians = Comedian.all
    @specials = Special.all
    erb :comedians
  end
=======
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
      @specials = Special.where(comedian_id: @comedians.ids)
    else
      @comedians = Comedian.all
      @specials = Special.all
    end
    erb :comedians
  end

  get '/comedians/new' do
    erb :new
  end
>>>>>>> Stashed changes
end
