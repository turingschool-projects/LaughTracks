require_relative '../models/comedian.rb'

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
     else
      @comedians = Comedian.all
    end
    # @specials = @comedians.specials.where(age: params[:age])
    erb :'comedians/index'
  end
end
