require 'pry'
class Comedian < ActiveRecord::Base
  validates_presence_of :name, :age

  def self.average_age
    average(:age)
  end

  def self.cities
    distinct.pluck(:city)
  end

  has_many :specials
end
