class LaughTracksApp < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '../public'

  get '/artists' do
    if params[:year]
      @artists = Artist.where(formation_year: params[:year])
    elsif params[:sort]
      @artists = Artist.order(params[:sort])
    else
      @artists = Artist.all
    end
    erb :index
  end

  get '/artists/:id' do
    @artist = Artist.where(id: params[:id]).first
    erb :artist
  end
end
