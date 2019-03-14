require_relative "../models/bourbon"
require "pry"

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :public_folder, File.dirname(__FILE__) + '../public'

  get "/bourbons" do
    @bourbons = Bourbon.all
    @awards = Award.all
    erb :index
  end

end
