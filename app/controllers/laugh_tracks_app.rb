class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    elsif params[:sort]
      case params[:sort]
      when 'name'
        @comedians = Comedian.sorted_by_name
      when 'city'
        @comedians = Comedian.sorted_by_city
      when 'age'
        @comedians = Comedian.sorted_by_age
      end
    else
      @comedians = Comedian.all
    end

    @specials = Special.where(comedian_id: @comedians.ids)

    erb :comedians
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians' do
    Comedian.create(
      name:     params[:comedian][:name],
      age:      params[:comedian][:age],
      hometown: params[:comedian][:hometown]
    )

    redirect '/comedians'
  end

  get '/comedians/:id' do
    @comedians = Comedian.where(id: params[:id])
    erb :individual_comedian
  end
end
