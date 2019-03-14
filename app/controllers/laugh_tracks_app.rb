class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    erb :comedians
  end
end
