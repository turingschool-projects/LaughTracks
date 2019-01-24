class LaughTracksApp < Sinatra::Base
  get '/' do
    @comedians = Comedian.all
    erb :"comedians/index"
  end
end
