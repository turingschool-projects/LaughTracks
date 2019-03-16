class Comedian < ActiveRecord::Base
  has_many :specials

  def self.avg_age
    average(:age)
  end

  def self.all_cities
    select(:city).distinct.map do |comedian|
      comedian.city
    end
  end

  def self.find_comedians_by_age(age)
    Comedian.where(age: age)
  end

  def self.find_comedians_city_by_age(age)
    Comedian.where(age: age).pluck(:city)
  end

end
