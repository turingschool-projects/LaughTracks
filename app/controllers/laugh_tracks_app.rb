
class LaughTracksApp < Sinatra::Base

    get '/comedians' do 
        @comedians = Comedian.all
        @specials = Special.all
        @age = params[:age]
        erb :comedians
    end

    get '/comedians/:id' do
        @comedian = Comedian.find(params["id"])
        erb :show
    end
end