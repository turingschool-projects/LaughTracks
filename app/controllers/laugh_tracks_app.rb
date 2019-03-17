class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where("age = ?", params[:age])
      @specials = Special.where(comedian_id: @comedians.ids)
    else
      @comedians = Comedian.all
      @specials = Special.all
    end 
    erb :"comedians/index"
  end

  get "/comedians/new" do
    erb :"comedians/new"
  end

  post "/comedians" do
    Comedian.create(
      name:      params[:name],
      age:       params[:age],
      city:      params[:city],
      head_shot: params[:head_shot]
    )
    redirect '/comedians'
  end
end
