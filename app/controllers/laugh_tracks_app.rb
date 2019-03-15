class LaughTracksApp < Sinatra::Base

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
    erb :"comedians/index"
  end

  get '/comedians/select' do
    redirect :"comedians?age=#{params[:text][:age]}"
  end

  get "/comedians?age=:id" do
    @comedians = Comedian.where("age = #{params[:text][:age]}")
    erb :"comedians/index"
  end
end
