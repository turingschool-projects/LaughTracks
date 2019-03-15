
class LaughTracksApp < Sinatra::Base

    get '/comedians' do 
        @comedians = Comedian.all
        @specials = Special.all
        @comedian_specials = Comedian.all.map do |comedian|
            Special.where(comedian_id: comedian.comedian_id)
        end  
        erb :comedians
    end
end