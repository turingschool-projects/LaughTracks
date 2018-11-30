class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :age, :city

  def self.average_age
    average(:age)
  end

  def self.uniq_hometowns
    select(:city).distinct
  end

  def self.find_by_age(age, comparison = false)
    where("age = '#{age}'")
  end
end
