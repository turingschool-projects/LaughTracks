class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.sorter(params)
    @specials = Special.sorter(@comedians)
    erb :index
  end

  get '/comedians/new' do
    erb :new
  end

  post "/comedians" do
    Comedian.create(params[:comedian])
    redirect '/comedians'
  end
end
