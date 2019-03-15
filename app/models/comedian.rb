class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :age

  def self.average_age
    average(:age).round().to_i
  end

  def self.unique_cities()
    uniq_cities = select('DISTINCT city')
    uniq_cities.map { |comedian| comedian.city }.sort()
  end
end
