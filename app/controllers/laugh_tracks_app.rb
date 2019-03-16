class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end

    @specials = Special.where(comedian_id: @comedians.ids)

    erb :comedians
  end

end
