class LaughTracksApp < Sinatra::Base

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    @comedians = Comedian.list_comedians(params)
    erb :"comedians/index"
  end
end
