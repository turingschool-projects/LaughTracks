class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    comedians = Comedian.all
    average_age = comedians.average_age
    erb :"comedians/index", locals:{comedians: comedians,
      average_age: average_age}
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
