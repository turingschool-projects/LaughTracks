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

  post '/comedians' do
    Comedian.create(params[:comedian])
    redirect '/comedians'
  end

  get '/comedians/:id' do
    @comedian = Comedian.find(params[:id])
    erb :show
  end

  delete '/comedians/:id/delete' do |id|
      Comedian.destroy(id.to_i)
      redirect '/comedians'
  end

end
