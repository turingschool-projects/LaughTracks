class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    @age = Comedian.average_age
    @cities = Comedian.unique_cities
    @length = Special.average_length

    erb :"comedians/index"
  end

  post '/comedians' do
    require 'pry';binding.pry
  end
end
