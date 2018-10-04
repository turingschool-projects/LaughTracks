class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    erb :'comedians/index'
  end
# To show that shotgun is working. Take out soon.
  get '/' do
    "Hello World"
  end
end
