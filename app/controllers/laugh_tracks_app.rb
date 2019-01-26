class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.where(nil)
    @comedians = @comedians.age(params[:age]) if params[:age].present?
    @age = Comedian.average_age
    @cities = Comedian.unique_cities
    @length = Special.average_length
    @total_specials = Comedian.total_specials
    erb :"comedians/index"
  end

  get '/comedians/new' do

    erb :"comedians/new"
  end

  post '/comedians/new' do

    redirect '/comedians'
  end
end
