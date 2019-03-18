class Artist < ActiveRecord::Base
  validates :name, :formation_year, :origin, :album_count, presence: true
  has_many :albums

  def photo
    name.downcase.gsub(" ", "_")
  end

  def self.average_age
    average("date_part('year',age(make_timestamp(formation_year,1,1,0,0,0.0)))").to_i
  end
end
