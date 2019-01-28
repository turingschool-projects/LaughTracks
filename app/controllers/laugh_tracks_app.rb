class LaughTracksApp < Sinatra::Base

  get '/' do
    redirect '/comedians'
  end

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where('age = ?', params[:age].to_i)
      @specials = Special.where(comedian_id: @comedians.ids)
    else
      @comedians = Comedian.all
      @specials = Special.where(comedian_id: @comedians.ids)
    end
    erb :"comedians/index"
  end

  get '/comedians/new' do
    erb :'comedians/new'
  end

end
