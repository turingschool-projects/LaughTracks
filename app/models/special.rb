class Special < ActiveRecord::Base
  belongs_to :comedian 

  validates_presence_of :title, :length

  def self.average_length 
    average(:length)
  end 
end