class Special < ActiveRecord::Base
  validates_presence_of :name
  belongs_to :comedian

  def self.average_length
    average(:length)
  end

  def self.filter(comedians)
    where(comedian_id: comedians.pluck(:id))
  end
end
