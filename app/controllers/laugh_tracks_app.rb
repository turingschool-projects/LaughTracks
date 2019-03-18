class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    erb :index
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians' do
    Comedian.create(name: params[:comedian][:name],
                    age: params[:comedian][:age],
                    birthplace: params[:comedian][:birthplace])
    redirect '/comedians'
  end

end
