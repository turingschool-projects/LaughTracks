class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :age, :city

  def self.average_age(caller = self)
    caller.average(:age)
  end

  def self.uniq_hometowns(caller = self)
    caller.select(:city).distinct.pluck(:city)
  end

  def self.find_by_age(age, comparison = false)
    where("age = '#{age}'")
  end
end
