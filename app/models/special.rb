class Special < ActiveRecord::Base
  validates :name, presence: true
  validates :run_time, presence: true
  validates :thumbnail, presence: true
  belongs_to :comedian

  def self.average_length
    average(:run_time).round
  end
end
