require 'csv'
# require the model(s)
Dir.glob(File.join('.', 'app', 'models', '*.rb')).each { |file| require file }

Comedian.delete_all

comedians = CSV.read(File.open("comedians.csv"),headers: true)
comedians.each do |comedian|
  Comedian.create(comedian.to_h)
end
