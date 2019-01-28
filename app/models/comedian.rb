class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true 

  has_many :specials

  def self.average_age
    average(:age)
  end

  def self.unique_cities
    cities = Comedian.select(:city).distinct.map {|comedian| comedian.city}
    cities.join", "
  end
end
