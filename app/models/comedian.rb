class Comedian < ActiveRecord::Base
  has_many :specials
  validates :name, presence: true
  validates :age, presence: true
  validates :city, presence: true
  def self.average_age
    average(:age)
  end

  def self.city_list
    select(:city).map(&:city).uniq.join(", ")
  end
end
