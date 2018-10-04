require File.expand_path('../../config/environment.rb', __FILE__)


grace_helbig = Comedian.create(name: "Grace Helbig", age: 33, city: "Los Angeles")
tmgwy = Special.create(name: "This Might Get Weird, Ya'll", comedian_id: grace_helbig.id)
nf = Special.create(name: "No Filter", comedian_id: grace_helbig.id)






# comedian = Comedian.create(...)
# special_1 = comedian.specials.create(...)
# special_2 = comedian.special.create(...)
puts "added #{comedian.specials.count} specials for #{comedian.name}."
