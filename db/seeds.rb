require_relative '../app/models/comedian'
require_relative '../app/models/special'

comedian = Comedian.create(...)
special_1 = comedian.specials.create(...)
special_2 = comedian.special.create(...)
puts "added #{comedian.specials.count} specials for #{comedian.name}."
