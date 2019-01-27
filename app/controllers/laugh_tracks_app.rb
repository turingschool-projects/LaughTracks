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
      @specials = Special.select("specials.*").joins(:comedian).where("comedians.age = ?", params[:age])
      erb :comedians
    # elsif params[:sort]
    #   if params[:sort] == "name"
    #     @comedians = Comedian.order(:name)
    #     @specials = Special.all
    #   elsif params[:sort] == "city"
    #     @comedians = Comedian.order(:city)
    #     @specials = Special.all
    #   elsif params[:sort] == "age"
    #     @comedians = Comedian.all.sort_by { |comedian| comedian.age}
    #     @specials = Special.all
    #   end
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
    redirect '/comedians'
  end

  get '/comedians/:id' do
    @comedian = Comedian.find_by(id: params[:id])
    erb :show
  end

end
