class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true
  validates :city, presence: true

  def self.average_age
    average(:age).round
  end

  def self.get_cities
  #   cities = []
  #   find_each do |comedian|
  #     cities << comedian.city
  #   end
  #   cities.uniq.join(', <br>')
  # end

  comedians = select(:city).distinct
  cities = comedians.map do |comedian|
    comedian.city
    end
    cities.join(", <br>")
  end

  def self.find_comedians_by_age(comedian_age)
    where(age: comedian_age)
  end
end
