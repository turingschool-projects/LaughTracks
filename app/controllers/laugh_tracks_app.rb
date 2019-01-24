class LaughTracksApp < Sinatra::Base
  get '/' do
    @comedians = Comedian.all
    @specials = Special.all
    erb :"comedians/index"
  end
end
