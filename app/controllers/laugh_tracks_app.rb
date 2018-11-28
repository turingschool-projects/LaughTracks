
class LaughTracksApp < Sinatra::Base
  get '/' do
    'Hello World'
  end

  get '/comedians' do
    Comedian.find(params)
    erb :index
  end
end
