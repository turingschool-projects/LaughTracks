class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end

    @specials = Special.where(comedian_id: @comedians.ids)

    erb :comedians
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians' do
    Comedian.create(
      name:     params[:comedian][:name],
      age:      params[:comedian][:age],
      hometown: params[:comedian][:hometown]
    )

    redirect '/comedians'
  end

end
