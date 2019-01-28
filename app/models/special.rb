class Special < ActiveRecord::Base
  belongs_to :comedian
  validates_presence_of :name, :length, :image

  def self.average_length
    average(:length).to_f.round(1)
  end

  def self.count
    count
  end


end
