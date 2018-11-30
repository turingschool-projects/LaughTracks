class LaughTracksApp < Sinatra::Base
  get '/' do
    redirect '/comedians'
  end

  get '/comedians' do
    @comedians = Comedian.all
    erb :index, layout: :layout
  end
end
