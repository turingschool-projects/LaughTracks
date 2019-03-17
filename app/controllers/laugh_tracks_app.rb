class LaughTracksApp < Sinatra::Base

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    @comedians = Comedian.list_comedians(params)
    @specials = Special.list_specials(params)
    erb :"comedians/index"
  end

  get '/comedians/new' do
    erb :'comedians/new'
  end

  post '/comedians' do
    Comedian.create(params)
    redirect :comedians
  end
end
