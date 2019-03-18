class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    average(:age)
  end

  def self.all_cities
    order(:city).pluck(:city).uniq
  end

  def self.total_specials(comedian)
    count(:special)
  end

  def self.filter_by_age(age)
    where(age: age)
  end

  def self.all_ages
    select(:age).distinct.order(:age)
  end

  def self.sort_by_name
    order(:name)
  end

  def self.sort_by_age
    order(:age)
  end

  def self.sort_by_city
    order(:city)
  end
end
