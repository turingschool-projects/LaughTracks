class Special < ActiveRecord::Base
  belongs_to :comedian

  def self.average_length
    average(:run_time).round(2)
  end
end
