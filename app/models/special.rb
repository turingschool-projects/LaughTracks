class Special < ActiveRecord::Base
  belongs_to :comedian

  validates_presence_of :title

  def self.average_run_time
    average(:run_time).round().to_i
  end

  def self.average_age
    average(:age).round().to_i
  end
end
