class LaughTracksApp < Sinatra::Base
  get '/' do
    @comedians = Comedian.all
    erb :index
  end
end
