class Special < ActiveRecord::Base
  belongs_to :comedians

  validates :name, presence: true

  def self.average_run_time
    average(:run_time).round
  end

end
