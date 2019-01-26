class Comedian < ActiveRecord::Base
  has_many :specials

  validates :age, presence:true
  validates :city, presence:true
  validates :name, presence:true

  def self.average_age
    average(:age).round(2)
  end

  def self.unique_cities
    pluck(:city).uniq
  end

  # def self.sort_comedians_by(param)
  #   if param
  #     if param[:age]
  #       where(age: param[:age])
  #     end
  #   else
  #     return all
  #   end
  # end
end
