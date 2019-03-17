class LaughTracksApp < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '../public'

  get '/artists' do
      @artists = Artist.all
    erb :index
  end
end
