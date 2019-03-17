class Album < ActiveRecord::Base
  validates :name, :release_date, :track_count, :duration, presence: true
end
