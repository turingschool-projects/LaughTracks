
class LaughTracksApp < Sinatra::Base
  get '/' do
    'Hello World'
  end

  get '/comedians' do
    @comedians = Comedian.all
    erb :index
  end

  post '/comedians' do
    # Comedian.create(params)
  end
end
