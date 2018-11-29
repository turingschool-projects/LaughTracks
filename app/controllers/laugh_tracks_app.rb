class LaughTracksApp < Sinatra::Base

set :root, File.expand_path("..", __dir__)

  # get '/comedians' do
  #   erb :"comedians/index"
  # end

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    erb :"comedians/index"
  end


end
