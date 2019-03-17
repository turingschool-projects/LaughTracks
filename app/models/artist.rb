class Artist < ActiveRecord::Base
  validates :name, :formation_year, :origin, :album_count, presence: true
end
