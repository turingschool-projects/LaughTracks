class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :age, :city

  def self.average_age
    average(:age)
  end

  def self.uniq_hometowns(caller = self)
    select(:city).distinct.pluck(:city)
  end

  def self.find_by_age(age, comparison = false)
    where("age = '#{age}'")
  end

  def self.average_from_query(age)
    find_by_age(age).average(:age)
  end
end
