class LaughTracksApp < Sinatra::Base
  get '/' do
    redirect '/comedians'
  end

  get '/comedians' do
    @comedians = Comedian.all
    @comedians = Comedian.where(age: params[:age]) if params[:age]
    @total_specials = Special.count_total(params[:age])
    @city_list = Comedian.city_list(params[:age])
    @average_runtime = Special.average_runtime(params[:age]).round(2)
    @average_age = Comedian.average_age(params[:age]).round(2)
    @specials = Special.all
    erb :"comedians/index"
  end

  get '/comedians/new' do
    erb :"comedians/new"
  end

  post '/comedians' do
    comedian = Comedian.new(params[:comedian])
    comedian.save
    redirect '/comedians'
  end
end
