class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :index
    # render_my_page(:index, "Index")
  end

  # get '/'


  private


end
