class Special < ActiveRecord::Base
  belongs_to :comedian

  validates_presence_of :name, :comedian_id, :run_time_minutes, :image_url

  def self.average_length
    average(:run_time_minutes)
  end
end
