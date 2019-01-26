class LaughTracksApp < Sinatra::Base

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    @comedians = Comedian.fetch_comedians(params)
    @specials = Special.specials_for_comedians(@comedians)
    erb :"comedians/index"
  end
end
