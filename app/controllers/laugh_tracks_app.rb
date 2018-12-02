
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
      if params[:age]
        @comedians = Comedian.find_by_age(params[:age])
      else
        @comedian = Comedian.all.order(params[:sort].to_sym)
      end
      require "pry"; binding.pry
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
end
