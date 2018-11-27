class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)

  get '/' do
    render_my_page(:index, "Index")
  end


  private

  def render_my_page(page, title = nil)
    @page = page
    title ||= page
    @title = title
    erb :layout
  end

end
