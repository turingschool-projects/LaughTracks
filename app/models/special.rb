class Special < ActiveRecord::Base
  belongs_to :comedian 

  validates_presence_of :title, :length, :image_url

  def self.average_length 
    average(:length)
  end 
end