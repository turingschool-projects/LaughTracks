class Special < ActiveRecord::Base
  belongs_to :comedian

  validates_presence_of :special_name

  def self.run_time
    average(:length).round
  end

  def self.total_count_of_specials
    all.count
  end
end
