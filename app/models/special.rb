class Special < ActiveRecord::Base
  belongs_to :comedian

  def self.run_time
    average(:length).round
  end
end
