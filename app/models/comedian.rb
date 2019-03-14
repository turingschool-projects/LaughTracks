class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :age, :city 

  def self.average_age 
    average(:age).round(2)
  end 
end
