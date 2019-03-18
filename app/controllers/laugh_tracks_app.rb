

class LaughTracksApp < Sinatra::Base

  get "/comedians" do
    if (params[:age]) == nil
      @comedians = Comedian.all
      @average_age = Comedian.avg_age
      @cities = Comedian.all_cities
      @specials_avg_runtime = Special.avg_runtime
    else
      @comedians = Comedian.find_comedians_by_age(params[:age])
      @average_age = params[:age]
      @cities = Comedian.find_comedians_city_by_age(params[:age])
      @specials_avg_runtime = Special.find_runtime_by_comedian_by_age(params[:age])
    end
    @total_number_of_specials = Special.total_number_of_specials
    erb :"comedians/index"
  end

  get "/comedians/new" do
    erb :"comedians/new"
  end

  post "/comedians" do
  Comedian.create(name: params[:comedian][:name],
              age: params[:comedian][:age],
              city: params[:comedian][:city])
  redirect '/comedians'
end

end
