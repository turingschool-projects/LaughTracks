class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
    @specials = Special.all
    erb :comedians
  end

  # get '/comedians/:age_filter' do
  #   if params[:age_filter]
  #   @comedians = Comedian.where(age: params[:age_filter])
  #   erb :comedians
  # end
end
