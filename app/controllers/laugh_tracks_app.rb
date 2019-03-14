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

  get "/bourbons/new" do
    erb :new
  end

# is this right?
  post "/bourbons" do
    bourbon = Bourbon.create(bourbon_params)
    redirect :"/bourbons"
  end

#so now my @bourbons is sorted, right?
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

  # no idea if this will work because it depends on the states available
  get "bourbons?select=KY" do
    binding.pry
    @bourbons = Bourbon.select_state("KY")
    erb :index
  end

end
