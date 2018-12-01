
class LaughTracksApp < Sinatra::Base
  get '/' do
    redirect('/comedians')
  end

  get '/comedians' do
    if params.empty?
      @comedians = Comedian.all
      @average_age = Comedian.average_age
      @average_length = Special.average_length
      @uniq_hometowns = Comedian.uniq_hometowns
    else
      @comedians = Comedian.find_by_age(params[:age])
      @average_age = Comedian.average_age(@comedians)
      specials_subset = Special.where("comedian_id IN (?)", @comedians.pluck(:id))
      @average_length = Special.average_length(specials_subset)
      @uniq_hometowns = Comedian.uniq_hometowns(@comedians)
    end
    erb :index
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians' do
    Comedian.create(
      name: params[:comedian][:name],
      age: params[:comedian][:age],
      city: params[:comedian][:hometown]
    )

    redirect '/comedians'
  end
end
