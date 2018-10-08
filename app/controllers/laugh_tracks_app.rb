class LaughTracksApp < Sinatra::Base
  set :method_override, true

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    @cities = @comedians.uniq_cities
    erb :'comedians/index'
  end

  get '/specials' do
    @specials = Special.all
    erb :'specials/index'
  end

  get '/comedians/new' do
    erb :"comedians/new"
  end

  post '/comedians' do
    comedian = Comedian.create(params[:comedian])
    comedian.save
    redirect "/comedians"
  end

# To show that shotgun is working. Take out soon.
  get '/' do
    "Hello World"
  end
end
