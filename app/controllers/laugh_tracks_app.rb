class LaughTracksApp < Sinatra::Base

  get "/comedians" do
      @comedians = Comedian.populate(params)
      @specials = Special.where(comedian_id: @comedians.pluck(:id))
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
