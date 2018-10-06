require_relative '../models/comedian'

class LaughTracksApp < Sinatra::Base
  # set :root, File.expand_path("..", __dir__)
  set :method_override, true

  get '/comedians' do
    # @comedians = Comedian.all.find_by(params[:age])
    # @comedians = Comedian.all
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
    erb :"comedians/index"
    #@comedians = Comedian.where(age: params[:age])
    #if params
    #else Comedian.all
  end

end
