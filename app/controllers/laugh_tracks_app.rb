require_relative '../models/comedian.rb'

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians/new' do
    erb :'/comedians/new'
  end

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
     else
      @comedians = Comedian.all
    end
    @specials = Special.filter(@comedians)
    erb :'comedians/index'
  end

  post '/comedians' do
  song = Comedian.create(params[:comedian])
  redirect '/comedians'
  end

end
