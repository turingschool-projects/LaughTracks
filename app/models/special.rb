class Special < ActiveRecord::Base
  belongs_to :comedian
  validates_presence_of :title
  def self.average_runtime
    average(:runtime)
  end
end
