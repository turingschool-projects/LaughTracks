require 'pry'
class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age

  def self.find_by_age(age)
    if age
      comedians = Comedian.where(age: age)
    else
      comedians = Comedian.all
    end
  end

  def self.average_age
    average(:age).round(1)
  end

  def self.cities
    distinct.pluck(:city)
  end

  has_many :specials
end
