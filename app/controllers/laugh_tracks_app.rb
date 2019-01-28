class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
      @specials = Special.where(comedian_id: @comedians.pluck(:id))
    else
      @comedians = Comedian.all
      @specials = Special.all
    end

    erb :"comedians/index"
  end

  get '/comedians/new' do
    erb :"comedians/new"
  end

  post "/comedians" do
    comedian = Comedian.new(params[:comedian])
      comedian.save
      redirect '/comedians'
  end

end
