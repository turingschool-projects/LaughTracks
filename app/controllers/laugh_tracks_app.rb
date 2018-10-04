class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    erb :'comedians/index'
  end
  get '/' do
    "Hello World"
  end
end
