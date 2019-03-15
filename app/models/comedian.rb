class Comedian < ActiveRecord::Base
  has_many :specials

  def self.average_age 
    average(:age)
  end 

  def self.unique_cities
    select(:city).distinct.map { |comedian| comedian.city }
  end 
end
