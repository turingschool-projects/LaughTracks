class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
      @specials = Special.where(comedian_id: @comedians.pluck(:id))
      @cities = @comedians.distinct.pluck(:city)
    else
      @comedians = Comedian.all
      @specials = Special.all
      @cities = @comedians.distinct.pluck(:city)
    end
    erb :index
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians' do
    Comedian.create(params[:comedian])
    redirect '/comedians'
  end

end
