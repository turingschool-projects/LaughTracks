class LaughTracksApp < Sinatra::Base
  get '/' do
    require 'pry'; binding.pry
    @comedians = Comedian.all
    erb :"comedians/index"
  end
end
