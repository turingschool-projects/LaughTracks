class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params.empty?
      @comedians = Comedian.all
      @specials = Special.all
    else
      @comedians = Comedian.where(age:params[:age])
      @specials = Special.where(comedian_id: @comedians.ids)
    end
    erb :"comedians"
  end

  get '/comedians/new' do
    erb :"new"
  end

  post '/comedians' do
    Comedian.create(params[:comedian])
    redirect "/comedians"
  end
end
