class LaughTracksApp < Sinatra::Base

  get '/' do
    redirect '/comedians'
  end

  get '/comedians' do
    @comedians = Comedian.where(nil)
    @comedians = @comedians.age(params[:age]) if params[:age].present?
    @age = @comedians.average_age
    @cities = @comedians.unique_cities
    @length = Special.average_length(@comedians)
    @total_specials = @comedians.total_specials
    erb :"comedians/index"
  end

  get '/comedians/new' do

    erb :"comedians/new"
  end

  post '/comedians/new' do
    @comedian = Comedian.create(name: params[:comedian][:name], age: params[:comedian][:age], born: params[:comedian][:born], picture_url: params[:comedian][:picture_url])

    redirect '/comedians'
  end
end
