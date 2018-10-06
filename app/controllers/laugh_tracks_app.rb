require_relative '../models/comedian'

class LaughTracksApp < Sinatra::Base
  # set :root, File.expand_path("..", __dir__)
  set :method_override, true

  get '/comedians' do
    # @comedians = Comedian.all.find_by(params[:age])
    # @comedians = Comedian.all
    @comedians = Comedian.find_by_age(params[:age])

    @specials = Special.by_comedians(@comedians)

    @average_run_time = @specials.average_run_time

    @special_count = @specials.count

    @average_age = @comedians.average_age

    @cities = @comedians.cities

    erb :"comedians/index"
    #@comedians = Comedian.where(age: params[:age])
    #if params
    #else Comedian.all
  end

end
