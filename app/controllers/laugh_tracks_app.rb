# require_relative "../models/comedian"
class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    payload = Comedian.fetch_data(params)
    @comedians = payload[:comedians]
    @cities = payload[:cities]
    @average_age = payload[:average_age]
    @average_runtime = payload[:average_runtime]
    @total_specials = payload[:total_specials]
    erb :index_vinyl
  end

  # get '/'


  private


end
