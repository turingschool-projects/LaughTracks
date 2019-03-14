class Special < ActiveRecord::Base
  belongs_to :comedians

  def self.average_run_time
    average(:run_time)
  end

end
