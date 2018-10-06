require_relative '../models/comedian'

class LaughTracksApp < Sinatra::Base
  # set :root, File.expand_path("..", __dir__)
  set :method_override, true

  get '/comedians' do
    @comedians = Comedian.find_by_age(params[:age])

    @specials = Special.by_comedians(@comedians)

    @average_run_time = @specials.average_run_time

    @special_count = @specials.count

    @average_age = @comedians.average_age

    @cities = @comedians.cities

    erb :"comedians/index"
  end

  get '/comedians/new' do
    erb :"comedians/new"
  end

  # get '/comedians/:id' do
  #   @comedian = Comedian.find(params[:id])
  #   erb :"comedian/show"
  # end

  post '/comedians' do
    comedian = Comedian.create(params[:comedian])
    # redirect "/comedians/#{comedian.id}"
    redirect "/comedians"
  end

end
