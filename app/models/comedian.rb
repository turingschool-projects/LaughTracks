class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :age, :city

  def self.average_age(caller = self)
    caller.average(:age)
  end

  def self.uniq_hometowns(caller = self)
    caller.select(:city).pluck(:city).uniq
  end

  def self.find_by_age(age, caller = self)
    caller.where("age = '#{age}'")
  end
end
