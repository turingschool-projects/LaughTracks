class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true
  validates :city, presence: true
  has_many :specials

  def self.average_age
    average(:age).round
  end

  def self.uniq_cities
    distinct.pluck(:city)
  end

end
