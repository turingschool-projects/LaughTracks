class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :public_folder, File.dirname(__FILE__) + '../public'

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    @age = params[:age]
    @all_ages = Comedian.all_ages
    erb :comedians
  end

  get '/comedians/new' do
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
    erb :show
  end

end
