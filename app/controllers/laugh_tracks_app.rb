require_relative '../models/comedian.rb'


class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    if(params.has_key?(:age))
      @comedians = Comedian.where(age: params[:age])
      @comedians_average_age = @comedians.average_comedian_age
      @unique_home_towns = @comedians.unique_home_town
      @total_specials = Special.specials_for_comedian_set(@comedians).count
      @average_special_length = Special.specials_for_comedian_set(@comedians).average(:length)
    else
      @comedians = Comedian.all
      @comedians_average_age = Comedian.average_comedian_age
      @unique_home_towns = Comedian.unique_home_town
      @average_special_length = Special.specials_for_comedian_set(@comedians).average(:length)
      @total_specials = Special.specials_for_comedian_set(@comedians).count
    end
    erb :"comedians/index"
  end

  get '/comedians/new' do
    erb :"comedians/new"
  end

  post '/comedians' do
    comedian = Comedian.new(params[:comedian])
    Comedian.create(name: params[:comedian][:name],
                    age: params[:comedian][:age],
                    home_town: params[:comedian][:home_town])
    redirect '/comedians'
  end

end
