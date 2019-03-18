class Artist < ActiveRecord::Base
  validates :name, :formation_year, :origin, :album_count, presence: true
  has_many :albums

  def photo
    name.downcase.gsub(" ", "_")
  end

  def self.average_age
    average("date_part('year',age(make_timestamp(formation_year,1,1,0,0,0.0)))").to_i
  end

  def self.average_album_length
    avg_length = joins(:albums).average("split_part(duration,':',1)::int + split_part(duration,':',2)::int / 60")
    "#{avg_length.to_int}:#{((avg_length % 1) * 60).to_i.to_s.rjust(2, "0")}"
  end

  def self.album_count
    joins(:albums).count
  end

  def self.cities
    select(:origin).distinct
  end
end
