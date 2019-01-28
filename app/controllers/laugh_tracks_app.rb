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
    elsif params[:city]
      @comedians = Comedian.where("city = ?", params[:city])
      @specials = Special.select("specials.*").joins(:comedian).where("comedians.city = ?", params[:city])
      erb :comedians
    elsif params[:sort]
      if params[:sort] == "name"
        @comedians = Comedian.order(:name)
        @specials = Special.all
        erb :comedians
      elsif params[:sort] == "city"
        @comedians = Comedian.order(:city)
        @specials = Special.all
        erb :comedians
      elsif params[:sort] == "age"
        @comedians = Comedian.all.sort_by { |comedian| comedian.age}
        @specials = Special.all
        erb :comedians
      end
    else
      @comedians = Comedian.all
      @specials = Special.all
      erb :comedians
    end
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians' do
    comedian = Comedian.new(params[:comedian])
    comedian.save
    redirect '/comedians'
  end

  set :method_override, true

  put '/comedians/:id' do |id|
    Comedian.update(id.to_i, params[:comedian])
    redirect "/comedian/#{id}"
  end

  delete '/comedians/:id' do |id|
    Comedian.destroy(id.to_i)
    redirect '/comedians'
  end

  get '/comedians/:id' do
    @comedian = Comedian.find_by(id: params[:id])
    erb :show
  end

end
