class Comedian < ActiveRecord::Base
  has_many :specials

  def self.average_comedian_age
    Comedian.all.average(:age)
  end

  def self.unique_home_town
    comedians = Comedian.select(:home_town).distinct
  end

end
