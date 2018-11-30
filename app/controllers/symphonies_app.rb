class SymphoniesApp < Sinatra::Base

  get '/composers' do
    if params[:age]
      @composers = Composer.where(age: params[:age])
    else
      @composers = Composer.all
    end
    erb :"composers/index"
  end

end
