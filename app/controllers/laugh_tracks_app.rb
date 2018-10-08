class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if params["age"]
      then
      cutoff = params[:age].to_i
      comedians = Comedian.all.by_age(cutoff)
      specials = comedians.find_specials
    else
      comedians = Comedian.all
      specials = Special.all
    end
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
