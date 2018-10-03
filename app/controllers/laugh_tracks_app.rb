class LaughTracksApp < Sinatra::Base
  set :method_override, true


  get '/comedians' do
    @comedians = Comedian.all
    erb :'comedians/index'
  end
end
