class LaughTracksApp < Sinatra::Base
  get '/' do
    redirect '/comedians'
  end

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where("age = ?", params[:age])
      @specials = Special.where(comedian_id: @comedian.id)
    else
      @comedians = Comedian.all
      @specials = Special.all
      @average_age = Comedian.average_age
      @average_run_time = Special.average_run_time
      @unique_cities = Comedian.unique_cities
    end
    erb :"comedians/index"
  end

  get '/comedians/new' do
    erb :"comedians/new"
  end

  post '/comedians' do
    Comedian.create(params[:comedian])
    redirect '/comedians'
  end
end
