require 'csv'
require 'pry'
require './app/models/comedian'
require './app/models/special'

Special.destroy_all
Comedian.destroy_all

file_path = './db/comedians.csv'
file = File.open(file_path)
comedians_list = CSV.new(file, headers: true, header_converters: :symbol).read

comedians_list.each do |comedian|
  Comedian.create(name: comedian[:name], age: comedian[:age], city: comedian[:hometown], image: comedian[:headshot])
end

file_path = './db/tv_specials.csv'
file = File.open(file_path)
special_list = CSV.new(file, headers: true, header_converters: :symbol).read

comedians_list.each do |comedian|
  special_list.each do |special|
    if special[:name] == comedian[:name]
      Comedian.where({name: comedian[:name]})[0].specials.create(title: special[:tv_special],
                                  run_time: special[:runtime_min],
                                  thumbnail: special[:special_thumbnails],
                                  comedian_id: Comedian.where({name: comedian[:name]})[0].id[0])
    end
  end
end
