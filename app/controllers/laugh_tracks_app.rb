class LaughTracksApp < Sinatra::Base

  get '/' do
    redirect '/comedians'
  end

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where('age = ?', params[:age].to_i)
    else
      @comedians = Comedian.all
    end
    erb :"comedians/index"
  end

end
