class Special < ActiveRecord::Base
  belongs_to :comedian 

  def self.average_length 
    average(:length)
  end 
end