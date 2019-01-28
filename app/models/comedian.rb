class Comedian < ActiveRecord::Base
  has_many :specials

  validates :age, presence:true
  validates :city, presence:true
  validates :name, presence:true

  def self.average_age
    average(:age).round(2)
  end

  def self.unique_cities
    pluck(:city).uniq
  end

end
