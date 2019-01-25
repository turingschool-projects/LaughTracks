class LaughTracksApp < Sinatra::Base

  get '/' do
    erb :dashboard
  end
end
