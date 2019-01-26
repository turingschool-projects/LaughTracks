class LaughTracksApp < Sinatra::Base
  get '/' do
    redirect '/comedians'
  end

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
    @total_specials = Special.count_total(params[:age])
    @city_list = Comedian.city_list(params[:age])
    @average_runtime = Special.average_runtime(params[:age])
    @average_age = Comedian.average_age(params[:age])
    @specials = Special.all
    require 'pry'; binding.pry
    erb :"comedians/index"
  end

  get '/comedians/new' do
    erb :"comedians/new"
  end

  post '/comedians' do
    require 'pry'; binding.pry
    comedian = Comedian.new(params[:comedian])
    comedian.save
    redirect '/comedians'
  end
end
