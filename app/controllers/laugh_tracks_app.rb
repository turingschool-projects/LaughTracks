class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if (params[:age] == nil)
      @comedians = Comedian.all
      @specials = Special.all
    else
      @comedians = Comedian.find_comedians_by_age(params[:age])
      @specials = Special.get_comedians_specials(@comedians)
    end
    erb :index
  end

  get '/comedians/new' do
    @comedians = Comedian.all
    erb :new
  end


  post '/comedians' do
    Comedian.create(params[:comedian])
    redirect '/comedians'
  end

  get '/comedians/:id' do
    @comedians = Comedian.all
    @comedian = Comedian.find(params[:id])
    erb :show
  end


end
