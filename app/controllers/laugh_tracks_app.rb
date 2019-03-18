class LaughTracksApp < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '../public'

  get '/artists' do
    if params[:year]
      @artists = Artist.where(formation_year: params[:year])
    else
      @artists = Artist.all
    end
    erb :index
  end
end
