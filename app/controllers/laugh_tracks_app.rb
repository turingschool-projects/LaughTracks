class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :public_folder, File.dirname(__FILE__) + '../public'

  get '/' do
    @comedians = Comedian.all
    @specials = Special.all
    erb :comedians
  end

end
