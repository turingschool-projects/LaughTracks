class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :gotta_try
    # render_my_page(:index, "Index")
  end


  private


end
