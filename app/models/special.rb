class Special < ActiveRecord::Base
  belongs_to :comedian

  validates_presence_of :special_name

  def self.run_time
    average(:length).round
  end
end
