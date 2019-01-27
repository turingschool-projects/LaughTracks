class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name
  validates :age, presence: true

  def self.average_age
    average(:age).round
  end

  def self.cities
    cities = select(:city).distinct
    city_list=[]
    cities.each do |city|
      city_list << city.city
    end
    city_list
    # require 'pry'; binding.pry
  end

  def self.find_comedians_by_age(comedian_age)
    where(age: comedian_age)
  end
end
