class Special < ActiveRecord::Base
  validates_presence_of :name

  belongs_to :comedian

  def self.average_run_time
    average(:run_time).round(1)
  end

end
