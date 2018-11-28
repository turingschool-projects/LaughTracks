class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

 get '/comedians' do
   erb :"comedians/index"
 end
end
