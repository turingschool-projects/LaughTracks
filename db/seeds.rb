require 'csv'
# require the model(s)
Dir.glob(File.join('.', 'app', 'models', '*.rb')).each { |file| require file }

Comedian.delete_all
Special.delete_all

comedians = CSV.read(File.open("comedians.csv"),headers: true)
comedians.each do |comedian|
  Comedian.create(comedian.to_h)
end

specials = CSV.read(File.open("specials.csv"),headers: true)
specials.each do |special|
  Special.create(special.to_h)
end
