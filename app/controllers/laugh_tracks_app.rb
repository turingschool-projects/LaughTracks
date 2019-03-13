require_relative "../models/bourbon"

class LaughTracksApp < Sinatra::Base
  set :root, FIle.expand_path("..", __dir__)

  get "/bourbons" do
    erb :dashboard
  end
  
end
