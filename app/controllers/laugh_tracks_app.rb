
class LaughTracksApp < Sinatra::Base
  get '/' do
    redirect '/comedians' 
  end

  get '/comedians' do
    @comedians = params[:age] ? Comedian.find_by_age(params[:age]) : Comedian.all
    @comedians = @comedians.order(params[:sort].to_sym) if params[:sort]

    @average_age, @average_length = get_averages_for(@comedians)
    @uniq_hometowns = Comedian.uniq_hometowns(@comedians)

    erb :index
  end

  get '/comedians/new' do
    erb :new
  end

  get '/comedians/:id' do
    @comedian = Comedian.where('id = ?', params[:id])[0]
    erb :show, :layout => :show_layout
  end

  post '/comedians' do
    Comedian.create(
      name: params[:comedian][:name],
      age: params[:comedian][:age],
      city: params[:comedian][:hometown]
    )

    redirect '/comedians'
  end

  def get_averages_for(comedians)
    return Comedian.average_age(@comedians),
    Special.average_length(specials_for(@comedians))
  end

  def specials_for(comedians)
    Special.where("comedian_id IN (?)", @comedians.pluck(:id))
  end
end
