class Comedian < ActiveRecord::Base
  has_many :specials
  def average_age
    self.class.average(:age)
  end
end
