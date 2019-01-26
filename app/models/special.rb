class Special < ActiveRecord::Base
  belongs_to :comedian

  validates :name, presence:true
  validates :run_time, presence:true

  def self.average_length
    average(:run_time).round(2)
  end
end
