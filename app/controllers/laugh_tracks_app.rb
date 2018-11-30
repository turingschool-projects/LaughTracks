
class LaughTracksApp < Sinatra::Base
  get '/' do
    redirect('/comedians')
  end

  get '/comedians' do
    @comedians = Comedian.all
    @average_age = Comedian.average_age
    @average_length = Special.average_length
    @uniq_hometowns = Comedian.uniq_hometowns

    erb :index
  end

  post '/comedians' do
    erb :index
  end
end
