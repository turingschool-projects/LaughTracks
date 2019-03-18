class Album < ActiveRecord::Base
  validates :name, :release_date, :track_count, :duration, presence: true
  belongs_to :artist

  def photo
    path = artist.name.downcase.gsub(" ", "_") + "/"
    path += normalize_album_name(name)
  end

  def normalize_album_name(name)
    name = name.downcase.gsub(" ", "_")
    name = name.gsub("&", "and").gsub("+", "plus").gsub("#", "no")
    name = name.gsub(/[:!?()',.-]/,"").gsub(/\_\_+/,"_")
  end

  def length
    puts "Album name: #{name}"
    select("split_part(duration,':',1)::int + split_part(duration,':',2)::int / 60")
  end
end
