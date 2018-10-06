require_relative '../models/comedian.rb'

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians/new' do
    erb :'/comedians/new'
  end

  get '/comedians/:id' do
    @comedian = Comedian.find(params[:id])
    erb :"comedians/show", locals:{comedian: @comedian}
  end

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
     else
      @comedians = Comedian.all
    end
    @specials = Special.filter(@comedians)
    erb :'comedians/index', locals: {comedians: @comedians, specials: @specials}
  end

  post '/comedians' do
  song = Comedian.create(params[:comedian])
  redirect '/comedians'
  end

end
