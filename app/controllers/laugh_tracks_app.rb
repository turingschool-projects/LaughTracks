require_relative "../models/bourbon"
require "pry"

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :public_folder, File.dirname(__FILE__) + '../public'

  get "/bourbons" do
    if params.count > 0
      @bourbons = Bourbon.select_state(params.keys.first)
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


# no idea if this will work because it depends on the states available
  # get "/bourbons/select=KY" do
  #   binding.pry
  #   redirect :"/bourbons?select=KY"
  # end

# so now my @bourbons is sorted, right?
  get "/bourbons?sortby=name" do
    @bourbons = Bourbon.sort_name
    erb :index
  end

  get "bourbons?sortby=distillery" do

    @bourbons = Bourbon.sort_distillery
    erb :index
  end

  get "bourbons?sortby=proof" do
    @bourbons = Bourbon.sort_proof
    erb :index
  end

  get "bourbons?sortby=expert_score" do
    @bourbons = Bourbon.sort_expert_score
    erb :index
  end

  get "bourbons?sortby=avg_rating" do
    @bourbons = Bourbon.sort_avg_rating
    erb :index
  end

end
