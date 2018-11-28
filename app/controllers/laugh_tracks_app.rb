# require_relative "../models/comedian"
class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    @comedians = Comedian.all
    erb :index
  end

  # get '/'


  private


end
