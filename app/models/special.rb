class Special < ActiveRecord::Base
  belongs_to :comedian

  validates :title, presence: true

  def self.average_runtime
    average(:runtime).round(2)
  end 
end
