class Comedian < ActiveRecord::Base
  has_many :specials
  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    Comedian.average(:age)
  end

  def self.list_unique_cities
    Comedian.distinct.pluck(:city)
  end
end
