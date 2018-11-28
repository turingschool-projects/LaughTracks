class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    @comedians = Comedians.all
    erb :index
    # render_my_page(:index, "Index")
  end

  # get '/'


  private


end
