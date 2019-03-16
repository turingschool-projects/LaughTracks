class LaughTracksApp < Sinatra::Base

  get "/comedians" do
    @comedians = Comedian.all
    if @comedians.pluck(:age).include?(params[:age].to_i)
      @comedians = Comedian.where(age: params[:age])
      @specials = Special.where(comedian_id: @comedians.pluck(:id))
    else
      @comedians = Comedian.all
      @specials = Special.all
    end
    erb :index
  end

  get "/comedians/new" do
    erb :new
  end
  #
  # post "/comedians" do
  #
  #   erb :comedians
  # end




end
