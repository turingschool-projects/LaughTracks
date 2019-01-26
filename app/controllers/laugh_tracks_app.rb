class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    erb :welcome
  end

end
