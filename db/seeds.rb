require File.expand_path('../../config/environment.rb', __FILE__)


comedian = Comedian.create(...)
special_1 = comedian.specials.create(...)
special_2 = comedian.special.create(...)
puts "added #{comedian.specials.count} specials for #{comedian.name}."
