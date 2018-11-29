# require_relative "../models/comedian"
class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
      @cities = @comedians.pluck(:city)
    else
      @comedians = Comedian.all
      @cities = Comedian.cities
    end
    @average_age = Comedian.average_age
    @average_runtime = Special.average_runtime
    @total_specials = Special.all.size
    erb :index_vinyl
  end

  # get '/'


  private


end
