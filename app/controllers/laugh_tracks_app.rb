class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    erb :index
  end

  get '/comedians/:age' do
    @comedians = Comedian.find_by_age(params[:age])
    @specials = Comedian.find_by_age(params[:age]).specials
    erb :index
  end 
end
