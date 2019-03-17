class Artist < ActiveRecord::Base
  validates :name, :formation_year, :origin, :album_count, presence: true
  has_many :albums

  def photo
    name.downcase.gsub(" ", "_")
  end
end
