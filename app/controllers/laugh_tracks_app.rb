class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.list_comedians(params)
    @average_age = @comedians.avg_age
    @average_runtime = Special.where(comedian: @comedians).avg_runtime
    @cities = @comedians.uniq_city
    @total_specials= Special.total_specials(@comedians)

    erb :'comedians/index'
  end

end
