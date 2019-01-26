require_relative '../models/comedian.rb'
require_relative '../models/special.rb'

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    redirect '/comedians'
  end

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where("age = ?", params[:age])
      @specials = Special.select(specials.*).joins(:comedians).where("comedians.age = ?", params[:age])
      erb :comedians
    else
      @comedians = Comedian.all
      @specials = Special.all
      erb :comedians
    end
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians/new' do
    comedian = Comedian.new(params[:comedian])
    comedian.save
    redirect '/'
  end

end
