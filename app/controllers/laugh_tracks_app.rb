class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params["age"]
      then
      cutoff = params[:age].to_i
      comedians = Comedian.all.by_age(cutoff)
    else
      comedians = Comedian.all
    end
    specials = Special.all
    erb :"comedians/index", locals:{comedians: comedians,
      specials: specials}
  end

# get '/comedians/new' do
#   erb :"comedians/new"
# end
#
# post '/comedians' do
#   freshmeat = Song.create(params[:comedian])
#   redirect "/comedians/#{freshmeat.id}"
# end

end
