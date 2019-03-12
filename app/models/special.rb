class Special < ActiveRecord::Base
  belongs_to :comedian

  def self.average_special_length
    Special.all.average(:length)
  end
end
