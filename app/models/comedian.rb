class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    Comedian.average(:age).round(2)
  end

  def self.all_cities
    comedians = Comedian.select(:city).distinct
    cities = ""
    comedians.each do |comedian|
      cities.concat(comedian.city + ", ")
    end
    cities[0..-3]
  end

  def self.total_specials(comedian)
    count(:special)
  end

  def self.filter_by_age(age)
    where(age: age)
  end

end
