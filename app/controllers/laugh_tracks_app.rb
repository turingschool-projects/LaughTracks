require_relative '../models/comedian.rb'
require_relative '../models/special.rb'

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :comedians
  end

  get '/new' do
    erb :new
  end

  post '/new' do
    comedian = Comedian.new(params[:comedian])
    comedian.save
    redirect '/'
  end
end
