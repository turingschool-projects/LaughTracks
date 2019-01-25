class Comedian < ActiveRecord::Base
  has_many :specials
  validates :name, presence: true
  validates :age, presence: true
  validates :city, presence: true
  def self.average_age(age)
    if age
      comedians = Comedian.where(age: age)
      comedians.average(:age)
    else
    average(:age)
    end
  end

  def self.city_list(age)
    if age
      comedians = Comedian.where(age: age)
      comedians.select(:city).map(&:city).uniq.join(", ")
    else
    select(:city).map(&:city).uniq.join(", ")
    end
  end
end
