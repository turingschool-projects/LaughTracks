require 'csv'
require 'pry'
require './app/models/comedian'
require './app/models/tv_special'

file_path = './db/comedians.csv'
comedians_list = CSV.new(File.open(file_path), headers: true, header_converters: :symbol).read

comedians_list.each do |comedian|
  Comedian.create(name: comedian[:name], age: comedian[:age], city: comedian[:hometown])
end


file_path = './db/tv_special.csv'
tv_special_list = CSV.new(File.open(file_path), headers: true, header_converters: :symbol).read

tv_special_list.each do |tv_special|
  TVSpecial.create(name: tv_special[:name], age: tv_special[:age], city: tv_special[:hometown])
end
