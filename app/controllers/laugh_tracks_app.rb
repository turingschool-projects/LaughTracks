class LaughTracksApp < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '../public'

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
      @specials = Special.all
      erb :"comedians/index"
  end
end
