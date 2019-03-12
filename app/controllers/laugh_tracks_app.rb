require_relative '../models/comedian.rb'


class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    if(params.has_key?(:age))
      @comedians = Comedian.where(age: params[:age])
    end
    @comedians_average_age = Comedian.average_comedian_age
    @unique_home_towns = Comedian.unique_home_town
    @average_special_length = Special.average_special_length
    erb :"comedians/index"
  end

  get '/comedians/new' do
    erb :"comedians/new"
 end


end
