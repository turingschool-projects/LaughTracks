require_relative "../models/bourbon"
require "pry"

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :public_folder, File.dirname(__FILE__) + '../public'

  get "/bourbons" do
    if params.has_key?("sort")
      @bourbons = Bourbon.sort_by(params[:sort].downcase)
    elsif params.has_key?("select")
      @bourbons = Bourbon.select_state(params[:select])
    else
      @bourbons = Bourbon.all
    end
    @awards = Award.all
    erb :index
  end

  get "/bourbons/" do
    @bourbons = Bourbon.all
    @awards = Award.all
    erb :index
  end

  get "/bourbons/new" do
    erb :new
  end

  post "/bourbons" do
    bourbon = Bourbon.create(params[:bourbon])
    redirect "/bourbons"
  end
end
