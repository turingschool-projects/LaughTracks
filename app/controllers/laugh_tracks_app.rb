require_relative '../models/comedian.rb'

class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians/new' do
    erb :'comedians/new'
  end

  get '/comedians/:id' do
    @comedian = Comedian.find(params[:id])
    erb :"comedians/show", locals:{comedian: @comedian}
  end

  get '/comedians' do
    comedians = Comedian.filter(params)
    specials = Special.filter(comedians)
    erb :'comedians/index', locals: {comedians: comedians, specials: specials}
  end

  post '/comedians' do
    Comedian.create(params[:comedian])
    redirect '/comedians'
  end

end
