class Special < ActiveRecord::Base
  belongs_to :comedians

  validates_presence_of :name,
                         :runtime_mins,
                         :comedian_id

  def self.average_run_time
    average(:runtime_mins).round
  end
end
