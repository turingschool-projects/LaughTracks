class Special < ActiveRecord::Base
  validates :name, presence: true
  validates :length, presence: true

  belongs_to :comedian

  def self.average_length
    average(:length)
  end
end
