class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :public_folder, File.dirname(__FILE__) + '../public'

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    @age = params[:age]
    @name = params[:name]
    @city = params[:city]
    @all_ages = Comedian.all_ages
    @city_list = Comedian.all_cities
    erb :comedians
  end

  get '/comedians/new' do
    @all_ages = Comedian.all_ages
    erb :new
  end

  post "/comedians" do
    Comedian.create(name: params[:comedian][:name],
                age: params[:comedian][:age],
                city: params[:comedian][:city])
    redirect '/comedians'
  end

  get '/comedians/:id' do
    @comedian = Comedian.find(params["id"])
    @all_ages = Comedian.all_ages
    erb :show
  end

end
