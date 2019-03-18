class Comedian < ActiveRecord::Base
  has_many :specials

  validates_presence_of :name, :age, :home_town

  def self.average_comedian_age
    average(:age)
  end

  def self.unique_home_town
    select(:home_town).distinct
  end

end
