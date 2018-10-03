class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    erb :"comedians/index"
    #if params
    #else Comedian.all
  end

end
