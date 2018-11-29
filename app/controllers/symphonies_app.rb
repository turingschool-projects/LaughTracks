class SymphoniesApp < Sinatra::Base

  get '/composers' do
    @composers = Composer.all
    erb :"composers/index"
  end

end
