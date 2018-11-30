
class LaughTracksApp < Sinatra::Base
  get '/' do
    redirect('/comedians')
  end

  get '/comedians' do
    if params.empty?
      @comedians = Comedian.all
      @average_age = Comedian.average_age
      @average_length = Special.average_length
      @uniq_hometowns = Comedian.uniq_hometowns
    else
      @comedians = Comedian.find_by_age(params[:age])
    end
    erb :index
  end

  post '/comedians' do
    erb :index
  end
end
