class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all 
    @specials  = Special.all
    erb :"comedians/index"
  end

  get "/comedians/new" do
    erb :"comedians/new"
  end

  post "/comedians" do
    Comedian.create(
      name: params[:name],
      age: params[:age],
      city: params[:city]
    )
    redirect '/comedians'
  end
end
