require File.expand_path('../../config/environment.rb', __FILE__)

require "database_cleaner"
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

grace_helbig = Comedian.create(name: "Grace Helbig", age: 33, city: "Los Angeles", thumbnail: "https://www.dailydot.com/wp-content/uploads/942/f5/8e03835a5f0cfe2e-1096x640.com/300x100")
grace_special_1 = grace_helbig.specials.create(name: "This Might Get Weird, Ya'll", thumbnail: "https://c8.alamy.com/comp/P3GFHB/grace-helbig-mamrie-hart-grace-helbig-and-mamrie-hart-kick-off-stream-con-this-might-get-weird-yall-at-vimeo-theater-located-at-javits-center-P3GFHB.jpg", run_time: 90 )
grace_special_2 = grace_helbig.specials.create(name: "No Filter", thumbnail: "https://static.tumblr.com/16adf8f1426e52b23d948dd02e3c968e/mlx2xj1/UHrn6oabi/tumblr_static_3wzg5lx0beyos8wowwokcog0g.jpg", run_time: 120)

nikki_glaser = Comedian.create(name: "Nikki Glaser", age: 34, city: "New York City", thumbnail: "https://m.media-amazon.com/images/M/MV5BMTU0OTcwOTUyMl5BMl5BanBnXkFtZTcwMzcyNTczOQ@@._V1_.jpg")
nikki_special_1 = nikki_glaser.specials.create(name: "Perfect", thumbnail: "https://i.ytimg.com/vi/bm6d8_QTXrY/maxresdefault.jpg", run_time: 60)
nikki_special_2 = nikki_glaser.specials.create(name: "I Am Road Comic", thumbnail: "https://i1.wp.com/jordanbrady.com/wp-content/uploads/2016/05/ChPoFiyUYAAGnJl.jpg?resize=300%2C250&ssl=1")












# comedian = Comedian.create(...)
# special_1 = comedian.specials.create(...)
# special_2 = comedian.special.create(...)
# puts "added #{Specials.count} specials for #{Comedian.name}."
